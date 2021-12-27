// This file allows to correct the solution of an exercice (NumbersPressed) of 
// Hack programming at the context of the course Arquitetura de Computadores II, 
// from TreeTree2.

// This script can be used to test the NumbersPressed program automatically. 

load NumbersPressed.asm,
output-file NumbersPressed.out,
compare-to NumbersPressed.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2 RAM[4]%D2.6.2 RAM[5]%D2.6.2 RAM[6]%D2.6.2 RAM[7]%D2.6.2 RAM[8]%D2.6.2 RAM[9]%D2.6.2;

set RAM[0] 0,
set RAM[1] 0,
set RAM[2] 0,
set RAM[3] 0,
set RAM[4] 0,
set RAM[5] 0,
set RAM[6] 0,
set RAM[7] 0,
set RAM[8] 0,
set RAM[9] 0,

set RAM[24576] 48,    // the keyboard key '0' is pressed
repeat 100000 {
  ticktock;
}
output;               // test that RAM[0] contains 1

set RAM[24576] 57,    // the keyboard key '9' is pressed
repeat 100000 {
  ticktock;
}
output;               // test that RAM[9] contains 1

set RAM[24576] 53,    // the keyboard key 5 is pressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[5] contains 1 

set RAM[24576] 0,    // the keyboard key '5' is unpressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[5] contains 1 

set RAM[24576] 53,    // the keyboard key 5 is pressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[5] contains 1 

set RAM[24576] 48,    // the keyboard key '0' is pressed
repeat 100000 {
  ticktock;
}
output;               // test that RAM[0] contains 1