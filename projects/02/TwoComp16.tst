// This file is NOT part of www.nand2tetris.org
// File name: projects/02/TwoComp16.tst

load TwoComp16.hdl,
output-file TwoComp16.out,
compare-to TwoComp16.cmp,
output-list in%B1.16.1 out%B1.16.1;

set in %B0000000000000000,  // in = 0
eval,
output;

set in %B0000000000000001,  // in = 1
eval,
output;

set in %B1111111111111111,  // in = -1
eval,
output;

set in %B0000000000101010,  // in = 42
eval,
output;

set in %B1111111110011100,  // in = -100
eval,
output;

set in %B0111111011110100,  // in = 32500
eval,
output;
