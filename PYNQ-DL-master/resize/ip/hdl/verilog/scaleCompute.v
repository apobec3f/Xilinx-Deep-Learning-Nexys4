// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module scaleCompute (
        ap_clk,
        ap_rst,
        currindex,
        inscale_V,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [31:0] currindex;
input  [31:0] inscale_V;
output  [41:0] ap_return;
input   ap_ce;

reg[41:0] ap_return;

wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [70:0] grp_fu_58_p2;
reg   [70:0] p_Val2_1_reg_89;
wire    ap_block_pp0_stage0;
wire   [19:0] tmp_fu_32_p1;
wire   [41:0] p_Val2_s_fu_36_p3;
wire  signed [41:0] r_V_fu_44_p2;
wire   [31:0] grp_fu_58_p0;
wire   [70:0] p_Val2_2_fu_64_p2;
reg    grp_fu_58_ce;
reg    ap_ce_reg;
reg   [31:0] currindex_int_reg;
reg   [31:0] inscale_V_int_reg;
reg   [41:0] ap_return_int_reg;
wire   [70:0] grp_fu_58_p00;

resize_accel_mul_cud #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 42 ),
    .dout_WIDTH( 71 ))
resize_accel_mul_cud_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_58_p0),
    .din1(r_V_fu_44_p2),
    .ce(grp_fu_58_ce),
    .dout(grp_fu_58_p2)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= {{p_Val2_2_fu_64_p2[70:29]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        currindex_int_reg <= currindex;
        inscale_V_int_reg <= inscale_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce_reg) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_1_reg_89 <= grp_fu_58_p2;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = {{p_Val2_2_fu_64_p2[70:29]}};
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce_reg) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_58_ce = 1'b1;
    end else begin
        grp_fu_58_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign grp_fu_58_p0 = grp_fu_58_p00;

assign grp_fu_58_p00 = inscale_V_int_reg;

assign p_Val2_2_fu_64_p2 = ($signed(p_Val2_1_reg_89) + $signed(71'd2361182115534915764224));

assign p_Val2_s_fu_36_p3 = {{tmp_fu_32_p1}, {22'd0}};

assign r_V_fu_44_p2 = (p_Val2_s_fu_36_p3 | 42'd2097152);

assign tmp_fu_32_p1 = currindex_int_reg[19:0];

endmodule //scaleCompute
