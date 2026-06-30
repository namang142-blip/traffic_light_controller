module testbench;
  reg clk,rst;
  wire [1:0] HL,SL;
  
  TLC dut(
    .clk(clk),
    .rst(rst),
    .HL(HL),
    .SL(SL)
  );
  integer i;
  always #5 clk=~clk;
  initial begin
    clk=0;
    rst=1;
    
    $monitor("t=%0t -> HL=%b -> SL=%b",$time,HL,SL);

    #10 rst=0;
    @(posedge clk);
    
    for(i=0;i<20;i=i+1)begin
      @(posedge clk);
    end
    $finish;
  end
endmodule
    
    
    
