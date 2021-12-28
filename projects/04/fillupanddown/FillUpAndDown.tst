// This file is inspired on the work done in www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Fábio Dias, IST.
// File name: projects/04/fillupanddown/FillUpAndDown.tst

load FillUpAndDown.asm,
output-file FillUpAndDown.out,
compare-to FillUpAndDown.cmp,
output-list RAM[16384]%D2.6.2 RAM[17648]%D2.6.2 RAM[18349]%D2.6.2 RAM[19444]%D2.6.2 RAM[20771]%D2.6.2
            RAM[21031]%D2.6.2 RAM[22596]%D2.6.2 RAM[23754]%D2.6.2 RAM[24575]%D2.6.2;

set RAM[24576] 131,		// the up key is pressed
repeat 1000000 {
  ticktock;
}
output;

set RAM[24576] 0,		// the keyboard in untouched
repeat 1000000 {
  ticktock;
}
output;

set RAM[24576] 133,		// the down key is pressed
repeat 1000000 {
  ticktock;
}
output;

set RAM[24576] 0,		// the keyboard in untouched
repeat 1000000 {
  ticktock;
}
output;

set RAM[24576] 1,		// a random key is pressed
repeat 1000000 {
  ticktock;
}
output;