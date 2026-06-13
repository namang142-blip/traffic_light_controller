
module TLC(
  input clk,rst,
  output reg [1:0] HL,
  output reg [1:0] SL
);
  parameter HG_SR=2'b00,
  			HY_SR=2'b01,
  			HR_SG=2'b10,
  			HR_SY=2'b11;
  reg [1:0] current,next;
  reg [2:0] counter;
  reg timer;
  
  always@(posedge clk or posedge rst)begin   //aschsy reset
    if(rst)
      current<=HG_SR;
    else
      current<=next;
  end
  
  always@(posedge clk or posedge rst)begin
    if(rst)
      counter<=3'b000;
    else if(timer)
      counter<=3'b000;   // when state duration finish,counter reset for next state timing.
    else
      counter<=counter+1;
  end
  
  always@(*)begin   // o/p based on current input only
    case(current)
      HG_SR: timer =(counter==4);
      HY_SR: timer =(counter==1);
      HR_SG: timer =(counter==4);
      HR_SY: timer =(counter==1);
      default: timer =0;
    endcase
  end
  
  always@(*)begin
    next=current;
    case(current)
      
      HG_SR:begin
        if(timer)
          next=HY_SR;
        else
          next=HG_SR;
      end
      
      HY_SR:begin
        if(timer)
          next=HR_SG;
        else
          next=HY_SR;
      end
      
      HR_SG:begin
        if(timer)
          next=HR_SY;
        else
          next=HR_SG;
      end
      
      HR_SY:begin
        if(timer)
          next=HG_SR;
        else
          next=HR_SY;
      end                  //cyclic FSM.(repeat always)
    default:next=HG_SR;

    endcase
  end
              
      always@(*)begin    //o/p block of moore fsm.
        case(current)
          HG_SR:begin
            HL=2'b10;
            SL=2'b00;
          end
          
          HY_SR:begin
            HL=2'b01;
            SL=2'b00;
          end
          
          HR_SG:begin
            HL=2'b00;
            SL=2'b10;
          end
          
          HR_SY:begin
            HL=2'b00;
            SL=2'b01;
          end
          default:begin
            HL=2'b00;
            SL=2'b00;
          end
        endcase
      end
      endmodule
    
  
