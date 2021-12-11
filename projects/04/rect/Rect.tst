// This file is inspired on the work done in www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Fábio Dias, IST.
// File name: projects/04/rect/Rect.tst

load Rect.asm,
output-file Rect.out,
compare-to Rect.cmp,
output-list RAM[16400]%D2.6.2 RAM[16432]%D2.6.2 RAM[16464]%D2.6.2 RAM[16496]%D2.6.2 RAM[16528]%D2.6.2 RAM[16560]%D2.6.2
            RAM[18576]%D2.6.2 RAM[18608]%D2.6.2 RAM[18640]%D2.6.2 RAM[18672]%D2.6.2 RAM[18704]%D2.6.2 RAM[18736]%D2.6.2;

set RAM[0] 70;
repeat 1000000 {
  ticktock;
}output;