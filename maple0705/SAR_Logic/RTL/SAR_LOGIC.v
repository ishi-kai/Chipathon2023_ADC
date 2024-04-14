// SARロジック
// 動作周波数(1bit A/Dあたりの時間) : 8MHz
//
// COMP_OUT : ラッチ後のコンパレータ出力(コンパレータに入るCLKがLowになってもコンパレータ出力が変動しないということ)
// DIGITAL_OUT : 1bit A/D結果
// COMP_CLK : コンパレータに入力するCLK(コンパレータが電圧比較するタイミングでSARロジックがコンパレータのCLK端子に信号を入れる)
// SC : CDACの容量のコンパレータ側端子をGNDに落とすSW。HIGHでGNDに落とす想定
// SDAC : CDACの容量にVrefを入力するかGNDを入力するか決めるSW。LOWでGNDを入力、HIGHでVrefを入力する想定。
//        BIT_ADC+1個のSW。MSBがCDACの最大の容量、LSBが最小の容量に対応。
// EOC : End of conversion signal
// CLK : PLL出力CLK(48MHz)
// XRST : 非同期Reset信号
// VDD : 電源電圧
// VSS : GND
//module SAR_LOGIC(COMP_OUT, DIGITAL_OUT, COMP_CLK, SC, SD, S0, S1, S2, S3, S4, S5, S6, S7, CLK, XRST, VDD, VSS);
//module SAR_LOGIC(COMP_OUT, DIGITAL_OUT, COMP_CLK, SC, SDAC, CLK, XRST, vdda1, vssd1);
module SAR_LOGIC(COMP_OUT, DIGITAL_OUT, COMP_CLK, SC, SDAC, EOC, CLK, XRST);
    input COMP_OUT;
    input CLK, XRST;
    output COMP_CLK, SC, EOC;
    output [`BIT_ADC-1:0] DIGITAL_OUT;
    output [`BIT_ADC:0] SDAC;

    reg COMP_CLK, SC, EOC;
    reg [`BIT_ADC-1:0] DIGITAL_OUT;
    reg [`BIT_ADC:0] SDAC, SDAC_NEXT;
    reg [2:0] state;    // 48MHz / 8MHz = 6 なのでバス幅3bit
    reg [2:0] ADCount;  // 1bit A/Dが完了するごとに+1。 6bit A/Dなのでバス幅3bit

    // state transition
    always @(posedge CLK or negedge XRST) begin
        if( XRST == `LOW ) begin
            state <= 0;
        end else if( state == 3'd6 ) begin
            state <= 1;
        end else begin
            state <= state + 1;
        end
    end

    // count the number of A/D times
    always @(posedge CLK or negedge XRST) begin
        if( XRST == `LOW ) begin
            ADCount <= 0;
        end else if( state == 3'd6 ) begin
            if ( ADCount == `BIT_ADC - 1 ) begin
                ADCount <= 0;
            end else begin
                ADCount <= ADCount + 1;
            end
        end
    end

    // each state operation
    always @(posedge CLK or negedge XRST) begin
        if( XRST == `LOW ) begin
            DIGITAL_OUT <= 0;
            COMP_CLK <= `LOW;
            SC <= `HIGH;
            EOC <= `LOW;
            SDAC <= 0;
            SDAC_NEXT <= 1 << `BIT_ADC;  // only MSB is HIGH, meaning Vinn = Vref / 2
        end else if( state == 3'd1) begin
            // CDAC Reset, CLK@Comparator Low
            COMP_CLK <= `LOW;
            SC <= `HIGH;
            SDAC <= 0;
            EOC <= `LOW;
        end else if( state == 3'd2) begin
            // Sc OFF(Vinn = Hi-Z)
            SC <= `LOW;
        end else if( state == 3'd3) begin
            // ref GEN.
            SDAC <= SDAC_NEXT;
        end else if( state == 3'd4) begin
            // CLK@Comparator High
            COMP_CLK <= `HIGH;
        end else if( state == 3'd5) begin
            DIGITAL_OUT <= {DIGITAL_OUT[`BIT_ADC-2:0], COMP_OUT};
            SDAC_NEXT <= next_SDAC(COMP_OUT, ADCount, SDAC);
        end else if( state == 3'd6) begin
            if ( ADCount == `BIT_ADC - 1 ) begin
                EOC <= `HIGH;
            end
        end
    end

    // determin next SDAC(SW state of CDAC) depenging on COMP_OUT(actually output of latch)
    function [`BIT_ADC:0] next_SDAC;
        input COMP_OUT;
        input [2:0] ADCount;
        input [`BIT_ADC:0] SDAC_now;

        if ( ADCount == `BIT_ADC - 1 ) begin    // LSB A/D converting now
            next_SDAC = 1 << `BIT_ADC;          // only MSB is HIGH, meaning Vinn = Vref / 2
        end else if( COMP_OUT == 0 ) begin
            next_SDAC = SDAC_now;
            next_SDAC[`BIT_ADC - ADCount] = 0;
            next_SDAC[`BIT_ADC - (ADCount + 1)] = 1;
        end else begin
            next_SDAC = SDAC_now;
            next_SDAC[`BIT_ADC - (ADCount + 1)] = 1;
        end

    endfunction
endmodule