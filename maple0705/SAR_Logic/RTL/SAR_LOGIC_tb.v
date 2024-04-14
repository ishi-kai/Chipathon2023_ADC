`define HIGH 1'b1
`define LOW 1'b0
`define BIT_ADC 4'd6

module SAR_LOGIC_tb;
    reg CLK = 1'b0;
    reg COMP_OUT = 1'b1;
    reg XRST = 1'b1;
    wire [`BIT_ADC-1:0] DIGITAL_OUT;
    wire COMP_CLK;
    wire SC;
    wire EOC;
    wire [`BIT_ADC:0] SDAC;

    initial begin
        $dumpfile("wave_SAR_Logic.vcd");
        $dumpvars(0, DUT);
    end

    always #2 begin
        CLK <= ~CLK;
    end

    SAR_LOGIC DUT(
        .COMP_OUT (COMP_OUT),       // 1bit input
        .DIGITAL_OUT (DIGITAL_OUT), // 1bit output
        .COMP_CLK (COMP_CLK),       // 1bit output
        .SC (SC),                   // 1bit output
        .SDAC (SDAC),               // 9bit output
        .EOC (EOC),                 // 1bit output
        .CLK (CLK),                 // 1bit input
        .XRST (XRST)                // 1bit input
    );

    initial begin
        #2
        XRST = 1'b0;
        #3
        XRST = 1'b1;

        #43
        COMP_OUT = 0;
        #400
        $finish;
    end
endmodule