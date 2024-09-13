module tb_DFF;
    reg d,clk; 
    wire q;
    top_module top (.d(d),.q(q),.clk(clk));
    

    //Create clock signal 
    initial begin 
        $display("[time] | D | Q  ");
        clk=0;
    end

    always #10 clk = ~clk; //Delay of 10 units

    initial begin
        $monitor("[ %2t ] | %0d | %0d", $time, d, q);  
        //Create stimulus for dut
        d <= 0;
        #20 
        d <= 1;
        #20
        d <= 0;
        #20 
        d <= 1;
    end

endmodule
