-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Jan  6 03:20:35 2026
-- Host        : DESKTOP-C8BHJOE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ i2c_scan_v2_i2c_scanner_0_0_sim_netlist.vhdl
-- Design      : i2c_scan_v2_i2c_scanner_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    start_req_reg_0 : in STD_LOGIC;
    start_req_reg_1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \shift_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core is
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[4]\ : STD_LOGIC;
  signal IOBUF_SCL_Inst_i_1_n_0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal T : STD_LOGIC;
  signal ack_latched_i_1_n_0 : STD_LOGIC;
  signal ack_latched_i_2_n_0 : STD_LOGIC;
  signal ack_latched_reg_n_0 : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal dev_found : STD_LOGIC;
  signal dev_found_i_1_n_0 : STD_LOGIC;
  signal dev_found_i_2_n_0 : STD_LOGIC;
  signal i2c_tick : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \phase[0]_i_1_n_0\ : STD_LOGIC;
  signal \phase[0]_i_2_n_0\ : STD_LOGIC;
  signal \phase[0]_i_3_n_0\ : STD_LOGIC;
  signal \phase[1]_i_1_n_0\ : STD_LOGIC;
  signal \phase[1]_i_2_n_0\ : STD_LOGIC;
  signal \phase[2]_i_1_n_0\ : STD_LOGIC;
  signal \phase[2]_i_2_n_0\ : STD_LOGIC;
  signal \phase_reg_n_0_[0]\ : STD_LOGIC;
  signal \phase_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_reg_n_0_[2]\ : STD_LOGIC;
  signal scl_out_en : STD_LOGIC;
  signal scl_out_en_i_1_n_0 : STD_LOGIC;
  signal scl_out_en_i_2_n_0 : STD_LOGIC;
  signal scl_out_en_i_3_n_0 : STD_LOGIC;
  signal scl_out_en_i_4_n_0 : STD_LOGIC;
  signal sda_in_val : STD_LOGIC;
  signal sda_out_en : STD_LOGIC;
  signal sda_out_en0_out : STD_LOGIC;
  signal sda_out_en_i_1_n_0 : STD_LOGIC;
  signal sda_out_en_i_2_n_0 : STD_LOGIC;
  signal sda_out_en_i_4_n_0 : STD_LOGIC;
  signal sda_out_en_i_5_n_0 : STD_LOGIC;
  signal sda_out_en_i_6_n_0 : STD_LOGIC;
  signal sda_sync_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal shift_reg : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal shift_reg0 : STD_LOGIC;
  signal start_req : STD_LOGIC;
  signal start_req_i_1_n_0 : STD_LOGIC;
  signal start_req_i_2_n_0 : STD_LOGIC;
  signal start_req_reg_n_0 : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \tick_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal tick_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_i_8_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_n_0 : STD_LOGIC;
  signal tick_cnt1_carry_n_1 : STD_LOGIC;
  signal tick_cnt1_carry_n_2 : STD_LOGIC;
  signal tick_cnt1_carry_n_3 : STD_LOGIC;
  signal \tick_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \tick_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \tick_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \tick_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \tick_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \tick_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \tick_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \tick_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \tick_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \tick_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \tick_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \tick_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \tick_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \tick_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \tick_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \tick_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \tick_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal tick_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tick_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \tick_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \tick_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \tick_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \tick_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_IOBUF_SCL_Inst_O_UNCONNECTED : STD_LOGIC;
  signal NLW_tick_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_5\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000,";
  attribute box_type : string;
  attribute box_type of IOBUF_SCL_Inst : label is "PRIMITIVE";
  attribute box_type of IOBUF_SDA_Inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of ack_latched_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phase[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phase[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of scl_out_en_i_2 : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of tick_cnt1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \tick_cnt1_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tick_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tick_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tick_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \tick_cnt_reg[8]_i_1\ : label is 11;
begin
  SR(0) <= \^sr\(0);
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8AAA8A8"
    )
        port map (
      I0 => i2c_tick,
      I1 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_current_state[4]_i_3_n_0\,
      I3 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_current_state[4]_i_5_n_0\,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C200020"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => \phase_reg_n_0_[1]\,
      I2 => \phase_reg_n_0_[2]\,
      I3 => \phase_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[4]\,
      O => \FSM_onehot_current_state[4]_i_2_n_0\
    );
\FSM_onehot_current_state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => start_req,
      I1 => \phase_reg_n_0_[2]\,
      I2 => \phase_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => start_req_reg_n_0,
      O => \FSM_onehot_current_state[4]_i_3_n_0\
    );
\FSM_onehot_current_state[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => bit_cnt(1),
      I2 => bit_cnt(2),
      O => \FSM_onehot_current_state[4]_i_4_n_0\
    );
\FSM_onehot_current_state[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \phase_reg_n_0_[1]\,
      I1 => \phase_reg_n_0_[2]\,
      I2 => \phase_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[4]_i_5_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_current_state[4]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[4]\,
      PRE => \^sr\(0),
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_current_state[4]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => start_req
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_current_state[4]_i_1_n_0\,
      CLR => \^sr\(0),
      D => start_req,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_current_state[4]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_current_state[4]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[4]\
    );
IOBUF_SCL_Inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      IO => SCL,
      O => NLW_IOBUF_SCL_Inst_O_UNCONNECTED,
      T => IOBUF_SCL_Inst_i_1_n_0
    );
IOBUF_SCL_Inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scl_out_en,
      O => IOBUF_SCL_Inst_i_1_n_0
    );
IOBUF_SDA_Inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      IO => SDA,
      O => sda_in_val,
      T => T
    );
IOBUF_SDA_Inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sda_out_en,
      O => T
    );
ack_latched_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00001000"
    )
        port map (
      I0 => sda_sync_reg(1),
      I1 => \phase_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => i2c_tick,
      I4 => ack_latched_i_2_n_0,
      I5 => ack_latched_reg_n_0,
      O => ack_latched_i_1_n_0
    );
ack_latched_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \phase_reg_n_0_[2]\,
      I1 => \phase_reg_n_0_[1]\,
      O => ack_latched_i_2_n_0
    );
ack_latched_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ack_latched_i_1_n_0,
      Q => ack_latched_reg_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => Q(1),
      I1 => \axi_rdata_reg[2]\(0),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => busy,
      I5 => \shift_reg_reg[7]_0\(1),
      O => D(0)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => Q(2),
      I1 => \axi_rdata_reg[2]\(1),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => dev_found,
      I5 => \shift_reg_reg[7]_0\(2),
      O => D(1)
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFE0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => start_req,
      I2 => \bit_cnt[2]_i_2_n_0\,
      I3 => bit_cnt(0),
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFAE00"
    )
        port map (
      I0 => start_req,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => bit_cnt(0),
      I3 => \bit_cnt[2]_i_2_n_0\,
      I4 => bit_cnt(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFFFFABAA0000"
    )
        port map (
      I0 => start_req,
      I1 => bit_cnt(1),
      I2 => bit_cnt(0),
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => \bit_cnt[2]_i_2_n_0\,
      I5 => bit_cnt(2),
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08000008080000"
    )
        port map (
      I0 => \FSM_onehot_current_state[4]_i_4_n_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_current_state[4]_i_5_n_0\,
      I3 => \bit_cnt[2]_i_3_n_0\,
      I4 => i2c_tick,
      I5 => start_req,
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \phase_reg_n_0_[2]\,
      I1 => \phase_reg_n_0_[1]\,
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      PRE => \^sr\(0),
      Q => bit_cnt(0)
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      PRE => \^sr\(0),
      Q => bit_cnt(1)
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      PRE => \^sr\(0),
      Q => bit_cnt(2)
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACFFFFFAA000000"
    )
        port map (
      I0 => start_req_reg_n_0,
      I1 => \FSM_onehot_current_state[4]_i_5_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => i2c_tick,
      I5 => busy,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => busy_i_1_n_0,
      Q => busy
    );
dev_found_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0EFFFFFA0200000"
    )
        port map (
      I0 => ack_latched_reg_n_0,
      I1 => \FSM_onehot_current_state[4]_i_5_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => dev_found_i_2_n_0,
      I4 => i2c_tick,
      I5 => dev_found,
      O => dev_found_i_1_n_0
    );
dev_found_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => start_req_reg_n_0,
      O => dev_found_i_2_n_0
    );
dev_found_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dev_found_i_1_n_0,
      Q => dev_found
    );
i2c_tick_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => load,
      Q => i2c_tick
    );
\phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFFFFCCFE0000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => \phase[0]_i_2_n_0\,
      I2 => \phase[0]_i_3_n_0\,
      I3 => \phase_reg_n_0_[2]\,
      I4 => \phase[2]_i_2_n_0\,
      I5 => \phase_reg_n_0_[0]\,
      O => \phase[0]_i_1_n_0\
    );
\phase[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \phase_reg_n_0_[0]\,
      I1 => start_req,
      I2 => \phase_reg_n_0_[1]\,
      I3 => \phase_reg_n_0_[2]\,
      O => \phase[0]_i_2_n_0\
    );
\phase[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \phase[0]_i_3_n_0\
    );
\phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22FFFFFF200000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => \phase_reg_n_0_[2]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => \phase[1]_i_2_n_0\,
      I4 => \phase[2]_i_2_n_0\,
      I5 => \phase_reg_n_0_[1]\,
      O => \phase[1]_i_1_n_0\
    );
\phase[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00E0000E00E0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => \phase_reg_n_0_[1]\,
      I3 => \phase_reg_n_0_[2]\,
      I4 => \phase_reg_n_0_[0]\,
      I5 => start_req,
      O => \phase[1]_i_2_n_0\
    );
\phase[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF8000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => \phase_reg_n_0_[0]\,
      I2 => \phase_reg_n_0_[1]\,
      I3 => \phase[2]_i_2_n_0\,
      I4 => \phase_reg_n_0_[2]\,
      O => \phase[2]_i_1_n_0\
    );
\phase[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA80"
    )
        port map (
      I0 => i2c_tick,
      I1 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_current_state[4]_i_5_n_0\,
      I3 => \phase[0]_i_3_n_0\,
      I4 => start_req,
      I5 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \phase[2]_i_2_n_0\
    );
\phase_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \phase[0]_i_1_n_0\,
      Q => \phase_reg_n_0_[0]\
    );
\phase_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \phase[1]_i_1_n_0\,
      Q => \phase_reg_n_0_[1]\
    );
\phase_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \phase[2]_i_1_n_0\,
      Q => \phase_reg_n_0_[2]\
    );
scl_out_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAFFFFEEEA0000"
    )
        port map (
      I0 => scl_out_en_i_2_n_0,
      I1 => start_req,
      I2 => \phase_reg_n_0_[2]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => scl_out_en_i_3_n_0,
      I5 => scl_out_en,
      O => scl_out_en_i_1_n_0
    );
scl_out_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC00FEFE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => \phase_reg_n_0_[0]\,
      O => scl_out_en_i_2_n_0
    );
scl_out_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA0200"
    )
        port map (
      I0 => i2c_tick,
      I1 => \phase_reg_n_0_[2]\,
      I2 => \phase_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I5 => scl_out_en_i_4_n_0,
      O => scl_out_en_i_3_n_0
    );
scl_out_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FEEEF0F0F0FE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => start_req,
      I3 => \phase_reg_n_0_[1]\,
      I4 => \phase_reg_n_0_[2]\,
      I5 => \phase_reg_n_0_[0]\,
      O => scl_out_en_i_4_n_0
    );
scl_out_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => scl_out_en_i_1_n_0,
      Q => scl_out_en
    );
sda_out_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFE0000"
    )
        port map (
      I0 => sda_out_en_i_2_n_0,
      I1 => start_req,
      I2 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I3 => \phase_reg_n_0_[1]\,
      I4 => sda_out_en0_out,
      I5 => sda_out_en,
      O => sda_out_en_i_1_n_0
    );
sda_out_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => sda_out_en_i_4_n_0,
      I1 => sda_out_en_i_5_n_0,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => bit_cnt(2),
      O => sda_out_en_i_2_n_0
    );
sda_out_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888A88"
    )
        port map (
      I0 => i2c_tick,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => \phase_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[4]\,
      I4 => \phase_reg_n_0_[2]\,
      I5 => sda_out_en_i_6_n_0,
      O => sda_out_en0_out
    );
sda_out_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => shift_reg(5),
      I1 => shift_reg(7),
      I2 => shift_reg(4),
      I3 => bit_cnt(0),
      I4 => bit_cnt(1),
      I5 => shift_reg(6),
      O => sda_out_en_i_4_n_0
    );
sda_out_en_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => shift_reg(2),
      I1 => shift_reg(1),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      I4 => shift_reg(3),
      O => sda_out_en_i_5_n_0
    );
sda_out_en_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCFE"
    )
        port map (
      I0 => start_req,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \phase_reg_n_0_[2]\,
      I4 => \phase_reg_n_0_[0]\,
      I5 => \phase_reg_n_0_[1]\,
      O => sda_out_en_i_6_n_0
    );
sda_out_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => sda_out_en_i_1_n_0,
      Q => sda_out_en
    );
\sda_sync_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_in_val,
      PRE => \^sr\(0),
      Q => sda_sync_reg(0)
    );
\sda_sync_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_sync_reg(0),
      PRE => \^sr\(0),
      Q => sda_sync_reg(1)
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => i2c_tick,
      I1 => s_axi_aresetn,
      I2 => start_req_reg_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => shift_reg0
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(0),
      Q => shift_reg(1),
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(1),
      Q => shift_reg(2),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(2),
      Q => shift_reg(3),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(3),
      Q => shift_reg(4),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(4),
      Q => shift_reg(5),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(5),
      Q => shift_reg(6),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => shift_reg0,
      D => \shift_reg_reg[7]_0\(6),
      Q => shift_reg(7),
      R => '0'
    );
start_req_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => start_req_i_2_n_0,
      I1 => s_axi_wdata(0),
      I2 => p_0_in(1),
      I3 => start_req,
      I4 => start_req_reg_n_0,
      O => start_req_i_1_n_0
    );
start_req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => start_req_reg_0,
      I3 => start_req_reg_1,
      I4 => p_0_in(0),
      O => start_req_i_2_n_0
    );
start_req_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => start_req_i_1_n_0,
      Q => start_req_reg_n_0
    );
tick_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tick_cnt1_carry_n_0,
      CO(2) => tick_cnt1_carry_n_1,
      CO(1) => tick_cnt1_carry_n_2,
      CO(0) => tick_cnt1_carry_n_3,
      CYINIT => '1',
      DI(3) => tick_cnt1_carry_i_1_n_0,
      DI(2) => tick_cnt1_carry_i_2_n_0,
      DI(1) => tick_cnt1_carry_i_3_n_0,
      DI(0) => tick_cnt1_carry_i_4_n_0,
      O(3 downto 0) => NLW_tick_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tick_cnt1_carry_i_5_n_0,
      S(2) => tick_cnt1_carry_i_6_n_0,
      S(1) => tick_cnt1_carry_i_7_n_0,
      S(0) => tick_cnt1_carry_i_8_n_0
    );
\tick_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tick_cnt1_carry_n_0,
      CO(3) => load,
      CO(2) => \tick_cnt1_carry__0_n_1\,
      CO(1) => \tick_cnt1_carry__0_n_2\,
      CO(0) => \tick_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tick_cnt1_carry__0_i_1_n_0\,
      DI(2) => \tick_cnt1_carry__0_i_2_n_0\,
      DI(1) => \tick_cnt1_carry__0_i_3_n_0\,
      DI(0) => \tick_cnt1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tick_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tick_cnt1_carry__0_i_5_n_0\,
      S(2) => \tick_cnt1_carry__0_i_6_n_0\,
      S(1) => \tick_cnt1_carry__0_i_7_n_0\,
      S(0) => \tick_cnt1_carry__0_i_8_n_0\
    );
\tick_cnt1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(14),
      I1 => Q(14),
      I2 => Q(15),
      I3 => tick_cnt_reg(15),
      O => \tick_cnt1_carry__0_i_1_n_0\
    );
\tick_cnt1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(12),
      I1 => Q(12),
      I2 => Q(13),
      I3 => tick_cnt_reg(13),
      O => \tick_cnt1_carry__0_i_2_n_0\
    );
\tick_cnt1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(10),
      I1 => Q(10),
      I2 => Q(11),
      I3 => tick_cnt_reg(11),
      O => \tick_cnt1_carry__0_i_3_n_0\
    );
\tick_cnt1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(8),
      I1 => Q(8),
      I2 => Q(9),
      I3 => tick_cnt_reg(9),
      O => \tick_cnt1_carry__0_i_4_n_0\
    );
\tick_cnt1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(15),
      I1 => tick_cnt_reg(15),
      I2 => Q(14),
      I3 => tick_cnt_reg(14),
      O => \tick_cnt1_carry__0_i_5_n_0\
    );
\tick_cnt1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(13),
      I1 => tick_cnt_reg(13),
      I2 => Q(12),
      I3 => tick_cnt_reg(12),
      O => \tick_cnt1_carry__0_i_6_n_0\
    );
\tick_cnt1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(11),
      I1 => tick_cnt_reg(11),
      I2 => Q(10),
      I3 => tick_cnt_reg(10),
      O => \tick_cnt1_carry__0_i_7_n_0\
    );
\tick_cnt1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(9),
      I1 => tick_cnt_reg(9),
      I2 => Q(8),
      I3 => tick_cnt_reg(8),
      O => \tick_cnt1_carry__0_i_8_n_0\
    );
tick_cnt1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(6),
      I1 => Q(6),
      I2 => Q(7),
      I3 => tick_cnt_reg(7),
      O => tick_cnt1_carry_i_1_n_0
    );
tick_cnt1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(4),
      I1 => Q(4),
      I2 => Q(5),
      I3 => tick_cnt_reg(5),
      O => tick_cnt1_carry_i_2_n_0
    );
tick_cnt1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => tick_cnt_reg(3),
      O => tick_cnt1_carry_i_3_n_0
    );
tick_cnt1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tick_cnt_reg(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => tick_cnt_reg(1),
      O => tick_cnt1_carry_i_4_n_0
    );
tick_cnt1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(7),
      I1 => tick_cnt_reg(7),
      I2 => Q(6),
      I3 => tick_cnt_reg(6),
      O => tick_cnt1_carry_i_5_n_0
    );
tick_cnt1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(5),
      I1 => tick_cnt_reg(5),
      I2 => Q(4),
      I3 => tick_cnt_reg(4),
      O => tick_cnt1_carry_i_6_n_0
    );
tick_cnt1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(3),
      I1 => tick_cnt_reg(3),
      I2 => Q(2),
      I3 => tick_cnt_reg(2),
      O => tick_cnt1_carry_i_7_n_0
    );
tick_cnt1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(1),
      I1 => tick_cnt_reg(1),
      I2 => Q(0),
      I3 => tick_cnt_reg(0),
      O => tick_cnt1_carry_i_8_n_0
    );
\tick_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(0),
      I1 => load,
      O => \tick_cnt[0]_i_2_n_0\
    );
\tick_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(3),
      I1 => load,
      O => \tick_cnt[0]_i_3_n_0\
    );
\tick_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(2),
      I1 => load,
      O => \tick_cnt[0]_i_4_n_0\
    );
\tick_cnt[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(1),
      I1 => load,
      O => \tick_cnt[0]_i_5_n_0\
    );
\tick_cnt[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tick_cnt_reg(0),
      I1 => load,
      O => \tick_cnt[0]_i_6_n_0\
    );
\tick_cnt[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(15),
      I1 => load,
      O => \tick_cnt[12]_i_2_n_0\
    );
\tick_cnt[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(14),
      I1 => load,
      O => \tick_cnt[12]_i_3_n_0\
    );
\tick_cnt[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(13),
      I1 => load,
      O => \tick_cnt[12]_i_4_n_0\
    );
\tick_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(12),
      I1 => load,
      O => \tick_cnt[12]_i_5_n_0\
    );
\tick_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(7),
      I1 => load,
      O => \tick_cnt[4]_i_2_n_0\
    );
\tick_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(6),
      I1 => load,
      O => \tick_cnt[4]_i_3_n_0\
    );
\tick_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(5),
      I1 => load,
      O => \tick_cnt[4]_i_4_n_0\
    );
\tick_cnt[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(4),
      I1 => load,
      O => \tick_cnt[4]_i_5_n_0\
    );
\tick_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(11),
      I1 => load,
      O => \tick_cnt[8]_i_2_n_0\
    );
\tick_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(10),
      I1 => load,
      O => \tick_cnt[8]_i_3_n_0\
    );
\tick_cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(9),
      I1 => load,
      O => \tick_cnt[8]_i_4_n_0\
    );
\tick_cnt[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tick_cnt_reg(8),
      I1 => load,
      O => \tick_cnt[8]_i_5_n_0\
    );
\tick_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[0]_i_1_n_7\,
      Q => tick_cnt_reg(0)
    );
\tick_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tick_cnt_reg[0]_i_1_n_0\,
      CO(2) => \tick_cnt_reg[0]_i_1_n_1\,
      CO(1) => \tick_cnt_reg[0]_i_1_n_2\,
      CO(0) => \tick_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \tick_cnt[0]_i_2_n_0\,
      O(3) => \tick_cnt_reg[0]_i_1_n_4\,
      O(2) => \tick_cnt_reg[0]_i_1_n_5\,
      O(1) => \tick_cnt_reg[0]_i_1_n_6\,
      O(0) => \tick_cnt_reg[0]_i_1_n_7\,
      S(3) => \tick_cnt[0]_i_3_n_0\,
      S(2) => \tick_cnt[0]_i_4_n_0\,
      S(1) => \tick_cnt[0]_i_5_n_0\,
      S(0) => \tick_cnt[0]_i_6_n_0\
    );
\tick_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[8]_i_1_n_5\,
      Q => tick_cnt_reg(10)
    );
\tick_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[8]_i_1_n_4\,
      Q => tick_cnt_reg(11)
    );
\tick_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[12]_i_1_n_7\,
      Q => tick_cnt_reg(12)
    );
\tick_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_tick_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \tick_cnt_reg[12]_i_1_n_1\,
      CO(1) => \tick_cnt_reg[12]_i_1_n_2\,
      CO(0) => \tick_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tick_cnt_reg[12]_i_1_n_4\,
      O(2) => \tick_cnt_reg[12]_i_1_n_5\,
      O(1) => \tick_cnt_reg[12]_i_1_n_6\,
      O(0) => \tick_cnt_reg[12]_i_1_n_7\,
      S(3) => \tick_cnt[12]_i_2_n_0\,
      S(2) => \tick_cnt[12]_i_3_n_0\,
      S(1) => \tick_cnt[12]_i_4_n_0\,
      S(0) => \tick_cnt[12]_i_5_n_0\
    );
\tick_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[12]_i_1_n_6\,
      Q => tick_cnt_reg(13)
    );
\tick_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[12]_i_1_n_5\,
      Q => tick_cnt_reg(14)
    );
\tick_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[12]_i_1_n_4\,
      Q => tick_cnt_reg(15)
    );
\tick_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[0]_i_1_n_6\,
      Q => tick_cnt_reg(1)
    );
\tick_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[0]_i_1_n_5\,
      Q => tick_cnt_reg(2)
    );
\tick_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[0]_i_1_n_4\,
      Q => tick_cnt_reg(3)
    );
\tick_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[4]_i_1_n_7\,
      Q => tick_cnt_reg(4)
    );
\tick_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_cnt_reg[0]_i_1_n_0\,
      CO(3) => \tick_cnt_reg[4]_i_1_n_0\,
      CO(2) => \tick_cnt_reg[4]_i_1_n_1\,
      CO(1) => \tick_cnt_reg[4]_i_1_n_2\,
      CO(0) => \tick_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tick_cnt_reg[4]_i_1_n_4\,
      O(2) => \tick_cnt_reg[4]_i_1_n_5\,
      O(1) => \tick_cnt_reg[4]_i_1_n_6\,
      O(0) => \tick_cnt_reg[4]_i_1_n_7\,
      S(3) => \tick_cnt[4]_i_2_n_0\,
      S(2) => \tick_cnt[4]_i_3_n_0\,
      S(1) => \tick_cnt[4]_i_4_n_0\,
      S(0) => \tick_cnt[4]_i_5_n_0\
    );
\tick_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[4]_i_1_n_6\,
      Q => tick_cnt_reg(5)
    );
\tick_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[4]_i_1_n_5\,
      Q => tick_cnt_reg(6)
    );
\tick_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[4]_i_1_n_4\,
      Q => tick_cnt_reg(7)
    );
\tick_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[8]_i_1_n_7\,
      Q => tick_cnt_reg(8)
    );
\tick_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_cnt_reg[4]_i_1_n_0\,
      CO(3) => \tick_cnt_reg[8]_i_1_n_0\,
      CO(2) => \tick_cnt_reg[8]_i_1_n_1\,
      CO(1) => \tick_cnt_reg[8]_i_1_n_2\,
      CO(0) => \tick_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tick_cnt_reg[8]_i_1_n_4\,
      O(2) => \tick_cnt_reg[8]_i_1_n_5\,
      O(1) => \tick_cnt_reg[8]_i_1_n_6\,
      O(0) => \tick_cnt_reg[8]_i_1_n_7\,
      S(3) => \tick_cnt[8]_i_2_n_0\,
      S(2) => \tick_cnt[8]_i_3_n_0\,
      S(1) => \tick_cnt[8]_i_4_n_0\,
      S(0) => \tick_cnt[8]_i_5_n_0\
    );
\tick_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \tick_cnt_reg[8]_i_1_n_6\,
      Q => tick_cnt_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI is
  signal Inst_I2C_Core_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair5";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
Inst_I2C_Core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core
     port map (
      D(1 downto 0) => reg_data_out(2 downto 1),
      Q(15 downto 0) => slv_reg2(15 downto 0),
      SCL => SCL,
      SDA => SDA,
      SR(0) => Inst_I2C_Core_n_0,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[2]\(1 downto 0) => slv_reg3(2 downto 1),
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wvalid => s_axi_wvalid,
      \shift_reg_reg[7]_0\(6 downto 0) => slv_reg1(6 downto 0),
      start_req_reg_0 => \^s_axi_wready\,
      start_req_reg_1 => \^s_axi_awready\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => Inst_I2C_Core_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => Inst_I2C_Core_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => Inst_I2C_Core_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => Inst_I2C_Core_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => Inst_I2C_Core_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => Inst_I2C_Core_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => Inst_I2C_Core_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => Inst_I2C_Core_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg2(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg2(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg2(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg2(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg2(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg2(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg2(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg2(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg2(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg2(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg2(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg2(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg2(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg2(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg2(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg2(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg2(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg2(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg2(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg2(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg2(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg2(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg2(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg2(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg2(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg2(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg2(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg2(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg2(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg2(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => Inst_I2C_Core_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => Inst_I2C_Core_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => Inst_I2C_Core_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => Inst_I2C_Core_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(1),
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg1(0),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg1(10),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg1(11),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg1(12),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg1(13),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg1(14),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg1(1),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg1(2),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg1(3),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg1(4),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg1(5),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg1(6),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg1(7),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg1(8),
      R => Inst_I2C_Core_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg1(9),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(1),
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg2(0),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg2(10),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg2(11),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg2(12),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg2(13),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg2(14),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg2(15),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg2(16),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg2(17),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg2(18),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg2(19),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg2(1),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg2(20),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg2(21),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg2(22),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg2(23),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg2(24),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg2(25),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg2(26),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg2(27),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg2(28),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg2(29),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg2(2),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg2(30),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg2(31),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg2(3),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg2(4),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg2(5),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg2(6),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg2(7),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg2(8),
      R => Inst_I2C_Core_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg2(9),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => p_0_in(1),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg3(0),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg3(10),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg3(11),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg3(12),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg3(13),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg3(14),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg3(15),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg3(16),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg3(17),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg3(18),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg3(19),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg3(1),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg3(20),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg3(21),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg3(22),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg3(23),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg3(24),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg3(25),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg3(26),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg3(27),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg3(28),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg3(29),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg3(2),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg3(30),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg3(31),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg3(3),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg3(4),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg3(5),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg3(6),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg3(7),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg3(8),
      R => Inst_I2C_Core_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg3(9),
      R => Inst_I2C_Core_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1 is
begin
i2c_scanner_v1_1_S_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI
     port map (
      SCL => SCL,
      SDA => SDA,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "i2c_scan_v2_i2c_scanner_0_0,i2c_scanner_v1_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "i2c_scanner_v1_1,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1
     port map (
      SCL => SCL,
      SDA => SDA,
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_WREADY => s_axi_wready,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
