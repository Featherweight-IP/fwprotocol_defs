
`ifndef INCLUDED_RV_ADDR_LINE_EN_MACROS_SVH
`define INCLUDED_RV_ADDR_LINE_EN_MACROS_SVH
	
`define RV_ADDR_LINE_EN_INITIATOR_PORT(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	output[ADR_WIDTH-1:0]			PREFIX``adr, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_r, \
	output							PREFIX``we, \
	output							PREFIX``valid, \
	input							PREFIX``ready
	
`define RV_ADDR_LINE_EN_TARGET_PORT(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	input[ADR_WIDTH-1:0]			PREFIX``adr, \
	input[DAT_WIDTH-1:0]			PREFIX``dat_w, \
	output[DAT_WIDTH-1:0]			PREFIX``dat_r, \
	input							PREFIX``we, \
	input							PREFIX``valid, \
	output							PREFIX``ready
	
`define RV_ADDR_LINE_EN_WIRES(PREFIX,ADR_WIDTH,DAT_WIDTH) \
	wire[ADR_WIDTH-1:0]				PREFIX``adr; \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_w; \
	wire[DAT_WIDTH-1:0]				PREFIX``dat_r; \
	wire							PREFIX``we; \
	wire							PREFIX``valid; \
	wire							PREFIX``ready
	
`define RV_ADDR_LINE_EN_CONNECT(P_PREFIX, W_PREFIX) \
	.P_PREFIX``adr( W_PREFIX``adr ), \
	.P_PREFIX``dat_w( W_PREFIX``dat_w ), \
	.P_PREFIX``dat_r( W_PREFIX``dat_r ), \
	.P_PREFIX``we( W_PREFIX``we ), \
	.P_PREFIX``valid( W_PREFIX``valid ), \
	.P_PREFIX``ready( W_PREFIX``ready )
	
`endif /* INCLUDED_RV_ADDR_LINE_EN_MACROS_SVH */
