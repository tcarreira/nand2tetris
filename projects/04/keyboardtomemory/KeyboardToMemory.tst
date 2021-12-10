// This file allows to correct the solution of an exercice (KeyboardToMemory) of 
// Hack programming at the context of the course Arquitetura de Computadores II, 
// from TreeTree2.

// This script can be used to test the KeyboardToMemory program automatically. 
// The script outputs the values
// of some selected registers from the screen memory map (RAM[16384]-RAM[24576]).
// This is done in order to test that these registers are set to 111....1, some time
// after the beginning of the script.

load KeyboardToMemory.asm,
output-file KeyboardToMemory.out,
compare-to KeyboardToMemory.cmp,
output-list RAM[0]%D2.6.2;

set RAM[24576] 65,    // the keyboard key 'A' is pressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 65 m('A')

set RAM[24576] 0,    // the keyboard key 'A' is unpressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 65 m('A')

set RAM[24576] 75,    // the keyboard key 'K' is pressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 75 m('K')

set RAM[24576] 0,    // the keyboard key 'K' is unpressed
repeat 100000 {
  ticktock;
}
output;              // test that RAM[0] contains 75 m('K')


