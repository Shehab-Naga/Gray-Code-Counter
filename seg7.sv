module sevenseg(
                input logic [3:0] data,
                output logic [6:0] segements  
 	        );

always_comb
case(data)
//                      abc_defg
0:       segements = 7'b111_1110 ;
1:       segements = 7'b011_0000 ;
2:       segements = 7'b110_1100 ;
3:       segements = 7'b111_1001 ;
4:       segements = 7'b011_0011 ;
5:       segements = 7'b101_1011 ;
6:       segements = 7'b101_1111 ;
7:       segements = 7'b111_0000 ; 
8:       segements = 7'b111_1111 ;
9:       segements = 7'b111_0011 ;
10:      segements = 7'b111_0111 ;
11:      segements = 7'b001_1111 ;
12:      segements = 7'b000_1101 ;
13:      segements = 7'b011_1101 ;
14:      segements = 7'b100_1111 ;
15:      segements = 7'b100_0111 ;
default: segements = 7'b000_0000 ;
endcase
endmodule 
