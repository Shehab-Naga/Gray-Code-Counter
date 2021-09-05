
module graycode
      #(parameter N=4)
        (
         output logic [N*((2)**(N))-1:0] g
         );    
int i, c, h, j;
logic [N*((2)**(N))-1:0] b;
logic [N:0] carry;
logic [0:N-1] one;
//the binary of the combination sequence of N_bit
//using full adder  

always_comb
 for(j=1; j < (2**(N)); j=j+1) begin: eachNumberLoop1
b[N-1:0]= 'b0;
one = 'b1 ;
carry[0] = 1'b0;
for(h=0; h < N; h=h+1) begin: eachBitInTheNumber1
 b[(j*N)+h]=b[(j-1)*N+h] ^ one[N-1-h] ^ carry[h];
 carry[h+1]= (b[(j-1)*N+h] & one[N-1-h]) | (b[(j-1)*N+h] & carry[h]) | (one[N-1-h] & carry[h]);
end
end 

//binary to graycode

always_comb
for(i = 1; i < (2**(N))+1; i = i + 1) begin: eachNumberLoop2
 g[N*(2**(N))-(i*N-(N-1))]=b[i*N-1];
for(c = 2; c < N + 1 ; c = c + 1) begin: eachBitInTheNumber2
 g[N*(2**(N))-(i*N-N)-c]= b[i*N-c+1] ^ b[i*N-c];
end
end
endmodule

