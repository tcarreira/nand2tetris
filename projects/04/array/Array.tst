// by Fábio Dias, IST.

load Array.asm,
output-file Array.out,
compare-to Array.cmp,
output-list RAM[199]%D2.6.2 RAM[200]%D2.6.2 RAM[201]%D2.6.2 RAM[202]%D2.6.2 RAM[203]%D2.6.2 RAM[204]%D2.6.2
            RAM[205]%D2.6.2 RAM[206]%D2.6.2 RAM[207]%D2.6.2 RAM[208]%D2.6.2 RAM[209]%D2.6.2 RAM[210]%D2.6.2;

repeat 1000000 {
  ticktock;
}output;