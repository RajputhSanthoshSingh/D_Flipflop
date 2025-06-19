module dff_sync_reset (
    input wire clk,       // Clock input
    input wire rst,       // Synchronous reset
    input wire d,         // Data input
    output reg q          // Output
);

always @(posedge clk) begin
    if (rst)              // Reset checked on clock edge
        q <= 1'b0;        // Reset the output
    else
        q <= d;           // Otherwise, capture data
end

endmodule
