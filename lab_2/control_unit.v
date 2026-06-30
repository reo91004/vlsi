module control_unit(
    input       clk,
    input       rstN,
    input       A_en,
    input       equal,
    input       equal_en,
    output reg  ALoad,
    output reg  BLoad,
    output reg  Muxsel,
    output reg  out_s,
    output reg [2:0] state
);

    always @(posedge clk or negedge rstN) begin
        if(!rstN) begin
            ALoad  <= 0;
            BLoad  <= 0;
            Muxsel <= 0;
            out_s  <= 0;
            state  <= 5'd0;
        end
        else begin
            if(state == 5'd0) begin
                ALoad  <= 0;
                BLoad  <= 0;
                Muxsel <= 0;
                out_s  <= 0;
                if(A_en)
                    state <= 5'd1;
                else
                    state <= 5'd0;
            end
            else if(state == 5'd1) begin
                ALoad <= 1;
                state <= 5'd2;
            end
            else if(state == 5'd2) begin
                ALoad <= 1;
                if(equal_en) begin
                    if(equal) begin
                        state <= 5'd3;
                    end
                    else begin
                        state <= 5'd4;
                    end
                end
                else
                    state <= 5'd2;
            end
            else if(state == 5'd3) begin
                ALoad  <= 0;
                BLoad  <= 1;
                Muxsel <= 0;
                state  <= 5'd5;
            end
            else if(state == 5'd4) begin
                ALoad  <= 0;
                BLoad  <= 1;
                Muxsel <= 1;
                state  <= 5'd5;
            end
            else if(state == 5'd5) begin
                ALoad <= 0;
                BLoad <= 0;
                out_s <= 1;
                state <= 5'd0;
            end
        end
    end

endmodule
