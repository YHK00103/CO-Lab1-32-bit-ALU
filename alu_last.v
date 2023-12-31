//0713216

`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:01 10/10/2013
// Design Name: 
// Module Name:    alu_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module alu_last(
               src1,       //1 bit source 1 (input)
               src2,       //1 bit source 2 (input)
               less,       //1 bit less     (input)
               A_invert,   //1 bit A_invert (input)
               B_invert,   //1 bit B_invert (input)
               cin,        //1 bit carry in (input)
               operation,  //operation      (input)
               result,     //1 bit result   (output)
               cout      //1 bit carry out(output)
            //   set
               );

input         src1;
input         src2;
input         less;
input         A_invert;
input         B_invert;
input         cin;
input [2-1:0] operation;

output  reg   result;
output  reg    cout;
//output reg set;

reg s1, s2;
reg done;

always@(operation or A_invert or B_invert or cin) begin

done = 0;

if(done == 0)begin

    if(A_invert) s1 = ~src1; else s1 = src1;
    if(B_invert) s2 = ~src2; else s2 = src2;

     case(operation)
          2'b00:  begin //and
             // set = 0;
              result = s1 & s2;
              cout = 0;  end

          2'b01:  begin //or
            //  set = 0;
              result = s1 | s2;
              cout = 0; end

          2'b10: begin //add
           //   set = 0;
              result =(s1 ^ s2) ^ cin;
              cout = (s1 & s2) + (s1 & cin) + (s2 & cin);  end

          2'b11: begin //slt 
             // set = (s1 ^ s2) ^ cin;
              result = less;
              cout = 0;  end

         default: ;

    endcase
    
    done = 1;

end
else begin
    result = result;
    cout = cout;
end
end

endmodule
