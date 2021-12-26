// This file is inspired on the work done in www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Daniel Pacheco, IST.
// File name: projects/04/adder/Adder.tst

load Adder.asm,
output-file Adder.out,
compare-to Adder.cmp,
output-list RAM[0]%D2.6.2;

set RAM[24576] 51,		// the 3 key is pressed
repeat 1000 {
  ticktock;
}

set RAM[24576] 0,		// no key is pressed
repeat 1000 {
  ticktock;
}

set RAM[24576] 55,		// the 7 key is pressed
repeat 1000 {
  ticktock;
}
output;                         // check the result