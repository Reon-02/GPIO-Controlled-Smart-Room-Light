module smart_light(
    input clk,
    input reset,
    input [7:0] sensor,
    output reg led
);

parameter THRESHOLD = 8'd100;

parameter OFF = 1'b0;
parameter ON  = 1'b1;

reg state, next_state;

// State Register
always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= OFF;
    else
        state <= next_state;
end

// Next-State Logic
always @(*)
begin
    case(state)

        OFF:
        begin
            if(sensor < THRESHOLD)
                next_state = ON;
            else
                next_state = OFF;
        end

        ON:
        begin
            if(sensor < THRESHOLD)
                next_state = ON;
            else
                next_state = OFF;
        end

    endcase
end

// Output Logic (Moore FSM)
always @(*)
begin
    case(state)

        OFF: led = 0;
        ON : led = 1;

    endcase
end

endmodule
