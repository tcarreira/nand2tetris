// This file allows to correct the solution of an exercice (NumbersToMemory) of 
// Hack programming at the context of the course Arquitetura de Computadores II, 
// from TreeTree2.

// This script can be used to test the NumbersToMemory program automatically. 

load NumbersToMemory.asm,
output-file NumbersToMemory.out,
compare-to NumbersToMemory.cmp,
output-list RAM[0]%D2.6.2;

set RAM[24576] 48,    // the keyboard key '0' is pressed
repeat 100000 {
  ticktock;
}
output;               // test that RAM[0] contains 0

set RAM[24576] 57,    // the keyboard key '9' is pressed
repeat 100000 {
  ticktock;
}
output;               // test that RAM[0] contains 9

set RAM[24576] 53,    // the keyboard key 5 is pressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 5 

set RAM[24576] 0,    // the keyboard key '5' is unpressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 5 


