// This file is inspired by www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// Authors: Fábio Dias
// For the Arquitetura de Computadores II course on
// Afterschool
// File name: projects/05/MemoryHidden.tst

load MemoryHidden.hdl,
output-file MemoryHidden.out,
compare-to MemoryHidden.cmp,
output-list in%D1.6.1 hide%B2.1.2 load%B2.1.2 address%B1.15.1 out%D1.6.1;

// Testing with the memory working normally 

set hide 0;

//// Set RAM[2000], RAM[4000] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X2000, tick, output; tock, output;
set address %X4000, tick, output; tock, output;

set in -1,				// Set RAM[0] = -1
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 9999,			// RAM[0] holds value
set load 0,
tick,
output;
tock,
output;

set address %X2000,		// Did not also write to upper RAM or Screen
eval,
output;
set address %X4000,
eval,
output;

//// Set RAM[0], RAM[4000] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X0000, tick, output; tock, output;
set address %X4000, tick, output; tock, output;

set in 2222,			// Set RAM[2000] = 2222
set load 1,
set address %X2000,
tick,
output;
tock,
output;

set in 9999,			// RAM[2000] holds value
set load 0,
tick,
output;
tock,
output;

set address 0,			// Did not also write to lower RAM or Screen
eval,
output;
set address %X4000,
eval,
output;

set load 0,				// Low order address bits connected
set address %X0001, eval, output;
set address %X0002, eval, output;
set address %X0004, eval, output;
set address %X0008, eval, output;
set address %X0010, eval, output;
set address %X0020, eval, output;
set address %X0040, eval, output;
set address %X0080, eval, output;
set address %X0100, eval, output;
set address %X0200, eval, output;
set address %X0400, eval, output;
set address %X0800, eval, output;
set address %X1000, eval, output;
set address %X2000, eval, output;

set address %X1234,		// RAM[1234] = 1234
set in 1234,
set load 1,
tick,
output;
tock,
output;

set load 0,
set address %X2234,		// Did not also write to upper RAM or Screen 
eval, output;
set address %X6234,
eval, output;

set address %X2345,		// RAM[2345] = 2345
set in 2345,
set load 1,
tick,
output;
tock,
output;

set load 0,
set address %X0345,		// Did not also write to lower RAM or Screen 
eval, output;
set address %X4345,
eval, output;

//// Clear the overwrite detection value from the screen
set in 0, set load 1, set address %X4000, tick, output; tock, output;

// Screen test

//// Set RAM[0FCF], RAM[2FCF] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X0FCF, tick, output; tock, output;
set address %X2FCF, tick, output; tock, output;

set load 1,
set in -1,
set address %X4FCF,
tick,
tock,
output,

set address %X504F,
tick,
tock,
output;

set address %X0FCF,		// Did not also write to lower or upper RAM
eval,
output;
set address %X2FCF,
eval,
output;

set load 0,				// Low order address bits connected
set address %X4FCE, eval, output;
set address %X4FCD, eval, output;
set address %X4FCB, eval, output;
set address %X4FC7, eval, output;
set address %X4FDF, eval, output;
set address %X4FEF, eval, output;
set address %X4F8F, eval, output;
set address %X4F4F, eval, output;
set address %X4ECF, eval, output;
set address %X4DCF, eval, output;
set address %X4BCF, eval, output;
set address %X47CF, eval, output;
set address %X5FCF, eval, output;

// Now we run the same thing with hide on

set hide 1;

//// Set RAM[2000], RAM[4000] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X2000, tick, output; tock, output;
set address %X4000, tick, output; tock, output;


set in -1,				// Set RAM[0] = -1
set load 1,
set address 0,
tick,
output;
tock,
output;

set in 9999,			// RAM[0] holds value
set load 0,
tick,
output;
tock,
output;

set address %X2000,		// Did not also write to upper RAM or Screen
eval,
output;
set address %X4000,
eval,
output;

//// Set RAM[0], RAM[4000] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X0000, tick, output; tock, output;
set address %X4000, tick, output; tock, output;

set in 2222,			// Set RAM[2000] = 2222
set load 1,
set address %X2000,
tick,
output;
tock,
output;

set in 9999,			// RAM[2000] holds value
set load 0,
tick,
output;
tock,
output;

set address 0,			// Did not also write to lower RAM or Screen
eval,
output;
set address %X4000,
eval,
output;

set load 0,				// Low order address bits connected
set address %X0001, eval, output;
set address %X0002, eval, output;
set address %X0004, eval, output;
set address %X0008, eval, output;
set address %X0010, eval, output;
set address %X0020, eval, output;
set address %X0040, eval, output;
set address %X0080, eval, output;
set address %X0100, eval, output;
set address %X0200, eval, output;
set address %X0400, eval, output;
set address %X0800, eval, output;
set address %X1000, eval, output;
set address %X2000, eval, output;

set address %X1234,		// RAM[1234] = 1234
set in 1234,
set load 1,
tick,
output;
tock,
output;

set load 0,
set address %X2234,		// Did not also write to upper RAM or Screen 
eval, output;
set address %X6234,
eval, output;

set address %X2345,		// RAM[2345] = 2345
set in 2345,
set load 1,
tick,
output;
tock,
output;

set load 0,
set address %X0345,		// Did not also write to lower RAM or Screen 
eval, output;
set address %X4345,
eval, output;

//// Clear the overwrite detection value from the screen
set in 0, set load 1, set address %X4000, tick, output; tock, output;

// Screen test

//// Set RAM[0FCF], RAM[2FCF] = 12345 (for following overwrite test)
set in 12345, set load 1, set address %X0FCF, tick, output; tock, output;
set address %X2FCF, tick, output; tock, output;

set load 1,
set in -1,
set address %X4FCF,
tick,
tock,
output,

set address %X504F,
tick,
tock,
output;

set address %X0FCF,		// Did not also write to lower or upper RAM
eval,
output;
set address %X2FCF,
eval,
output;

set load 0,				// Low order address bits connected
set address %X4FCE, eval, output;
set address %X4FCD, eval, output;
set address %X4FCB, eval, output;
set address %X4FC7, eval, output;
set address %X4FDF, eval, output;
set address %X4FEF, eval, output;
set address %X4F8F, eval, output;
set address %X4F4F, eval, output;
set address %X4ECF, eval, output;
set address %X4DCF, eval, output;
set address %X4BCF, eval, output;
set address %X47CF, eval, output;
set address %X5FCF, eval, output;
