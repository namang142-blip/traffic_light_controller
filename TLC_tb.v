module testbench;
  reg clk,rst;
  wire [1:0] HL;
  wire [1:0] SL;
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
    
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);
    
    #10 rst=0;
    @(posedge clk);
    
    for(i=0;i<20;i=i+1)begin
      @(posedge clk);
      $display("t=%0t -> HL=%b -> SL=%b",$time,HL,SL);
    end
    $finish;
  end
endmodule
    
    
  
