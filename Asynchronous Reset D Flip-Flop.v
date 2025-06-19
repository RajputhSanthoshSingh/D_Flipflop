module dff_async_reset (
    input wire clk,       // Clock input
    input wire rst,       // Asynchronous reset
    input wire d,         // Data input
    output reg q          // Output
);

always @(posedge clk or posedge rst) begin
    if (rst)              // Reset condition checked immediately
        q <= 1'b0;        // Reset output asynchronously
    else
        q <= d;           // Otherwise, capture data at clock edge
end

endmodule
