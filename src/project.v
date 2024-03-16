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
    input  wire       clk       // clock
);

    // All output pins must be assigned. If not used, assign to 0.
    assign uo_out[7:2] = 6'b000000;
    assign uio_out[7:0] = 8'b00000000;
    assign uio_oe[7:0]  = 8'b00000000;
    
    // Example: Sum and carry logic
    assign uo_out[0] = ui_in[0] ^ ui_in[1]; // assigning sum
    assign uo_out[1] = ui_in[0] & ui_in[1]; // assigning carry

endmodule
