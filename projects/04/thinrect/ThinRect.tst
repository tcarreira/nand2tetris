// This file is inspired on the work done in www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Daniel Pacheco, IST.
// File name: projects/04/thinrect/ThinRect.tst

load ThinRect.asm,
output-file ThinRect.out,
compare-to ThinRect.cmp,
output-list RAM[16384]%D2.6.2 RAM[16416]%D2.6.2 RAM[16417]%D2.6.2 RAM[16448]%D2.6.2 RAM[16449]%D2.6.2 RAM[18592]%D2.6.2
            RAM[18593]%D2.6.2 RAM[18624]%D2.6.2 RAM[18560]%D2.6.2 RAM[18559]%D2.6.2 RAM[18561]%D2.6.2 RAM[18528]%D2.6.2;

set RAM[0] 70;
repeat 1000000 {
  ticktock;
}output;