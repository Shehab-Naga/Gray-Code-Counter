
module counter
       (
	 input logic clk,
         input logic reset,
         input logic [63:0]x,
	 output logic [3:0] y
        );
typedef enum logic [4:0] {s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23} statetype;
statetype state, nextstate;

// state register 
always_ff@(posedge clk, posedge reset)
       if (reset) state <= s0;
       else       state <= nextstate;

// next state logic
always_comb
  case(state)
s0: nextstate= s1;
s1: nextstate= s2;
s2: nextstate= s3;
s3: nextstate= s4;
s4: nextstate= s5;
s5: nextstate= s6;
s6: nextstate= s7;
s7: nextstate= s8;
s8: nextstate= s9;
s9: nextstate= s10;
s10: nextstate= s11;
s11: nextstate= s12;
s12: nextstate= s13;
s13: nextstate= s14;
s14: nextstate= s15;
s15: nextstate= s16;
s16: nextstate= s17;
s17: nextstate= s18;
s18: nextstate= s19;
s19: nextstate= s20;
s20: nextstate= s21;
s21: nextstate= s22;
s22: nextstate= s23;
s23: nextstate= s0;
default: nextstate= s0 ;
endcase

// output logic 
assign y[3]= (state==s8) |(state==s9) |(state==s10) |(state==s11) |(state==s12) |(state==s13) |(state==s14) | (state==s15) ;
assign y[2]= (state==s4) |(state==s5) |(state==s6) |(state==s7) |(state==s8) |(state==s9) |(state==s10) | (state==s11)|(state==s20) |(state==s21) |(state==s22) | (state==s23) ;
assign y[1]= (state==s2) |(state==s3) |(state==s4) |(state==s5) |(state==s10) |(state==s11) |(state==s12)| (state==s13) | (state==s18)|(state==s19) |(state==s20) |(state==s21) ;
assign y[0]= (state==s1) |(state==s2) |(state==s5) |(state==s6) |(state==s9) |(state==s10) |(state==s13)| (state==s14) | (state==s17)|(state==s18) |(state==s21) |(state==s22) ;
endmodule
