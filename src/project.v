/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_HA (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // All output pins must be assigned. If not used, assign to 0.
    // assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
    assign ui_in[7:2] = 6'b000000; // Assigning the specific bits of ui_in to 0
    assign uo_out[7:2] = 6'b000000; // Assigning the specific bits of uo_out to 0
    assign uio_in = 8'b00000000; // Corrected assignment to assign all bits of uio_in to 0
    assign uio_out = 8'b00000000; // Corrected assignment to assign all bits of uio_out to 0
    assign uio_oe = 8'b00000000; // Corrected assignment to assign all bits of uio_oe to 0
    assign uo_out[0] = ui_in[0] ^ ui_in[1]; // Assigning the sum of the first two bits of ui_in
    assign uo_out[1] = ui_in[0] & ui_in[1]; // Assigning the carry of the first two bits of ui_in

endmodule
