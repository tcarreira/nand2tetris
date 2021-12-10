// This file allows to correct the solution of an exercice (FillBlack) of 
// Hack programming at the context of the course Arquitetura de Computadores II, 
// from TreeTree2.

// This script can be used to test the FillBlack program automatically. 
// The script outputs the values
// of some selected registers from the screen memory map (RAM[16384]-RAM[24576]).
// This is done in order to test that these registers are set to 111....1, some time
// after the beginning of the script.

load FillBlack.asm,
output-file FillBlack.out,
compare-to FillBlack.cmp,
output-list RAM[16384]%D2.6.2 RAM[17648]%D2.6.2 RAM[18349]%D2.6.2 RAM[19444]%D2.6.2 RAM[20771]%D2.6.2 RAM[21031]%D2.6.2 RAM[22596]%D2.6.2 RAM[23754]%D2.6.2 RAM[24575]%D2.6.2;

repeat 1000000 {
  ticktock;
}
output;              // test that the screen is black


