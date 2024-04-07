- SAR_LOGIC_caravel.v  
  SARロジック RTL(論理合成用)  
  懸念点:  
  - SC(CDACの容量のコンパレータ側端子をGNDに落とすSW)によるリセット(Vinn=GND)が1CLK分の時間(20ns, 48MHzの逆数)しか取れていない
  - コンパレータにCLK=Highを入れてから次のCDACスイッチ状態を決めるまでの時間が1CLK分の時間しか取れていない
  - state=6が空いていてもったいない
