module div( input  clk, 
            input   A1,
				input   A2,
				input   A3,
				input   A4,
            input   B1,
				input   B2,
				input   B3,
				input   B4,
            output reg Q1,
            output reg Q2,
				output reg Q3,
				output reg Q4,			
            output reg Rem1,
				output reg Rem2,
				output reg Rem3,
				output reg Rem4
          );
reg [3:0] Q_pre;
reg [3:0] R_pre;
wire [3:0]A,B,Q;

assign A = {A4, A3, A2, A1};
assign B = {B4, B3, B2, B1};
assign Q = {Q4, Q3, Q2, Q1};

always @*
begin
    Q_pre = A / B;
    R_pre = A - Q * B;
end
always @(posedge clk)
begin
    Q1 <= Q_pre[0];
	 Q2 <= Q_pre[1];
	 Q3 <= Q_pre[2];
	 Q4 <= Q_pre[3];
    Rem1 <= R_pre[0];
	 Rem2 <= R_pre[1];
	 Rem3 <= R_pre[2];
	 Rem4 <= R_pre[3];
end
endmodule 