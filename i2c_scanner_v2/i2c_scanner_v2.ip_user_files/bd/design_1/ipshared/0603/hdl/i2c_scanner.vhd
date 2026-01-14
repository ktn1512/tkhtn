library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity i2c_scanner_core is
    Port ( 
        clk         : in  STD_LOGIC;            
        rst_n       : in  STD_LOGIC;             
        start_scan  : in  STD_LOGIC;           
        addr_in     : in  STD_LOGIC_VECTOR(6 downto 0); 
        clk_div     : in  STD_LOGIC_VECTOR(15 downto 0); 
        
        busy        : out STD_LOGIC;          
        dev_found   : out STD_LOGIC;          
        
        sda         : inout STD_LOGIC;
        scl         : inout STD_LOGIC
    );
end i2c_scanner_core;

architecture Behavioral of i2c_scanner_core is

    type state_type is (IDLE, START, SHIFT_DATA, READ_ACK, STOP);
    signal current_state : state_type := IDLE;

    signal sda_out_en : std_logic := '0';
    signal scl_out_en : std_logic := '0'; 
    
    signal sda_in_val : std_logic; 
    signal scl_in_val : std_logic; 
    signal sda_t      : std_logic; 
    signal scl_t      : std_logic; 

    signal sda_sync_reg : std_logic_vector(1 downto 0) := "11";
    signal sda_in_synced : std_logic; 

    signal tick_cnt    : unsigned(15 downto 0) := (others => '0');
    signal i2c_tick    : std_logic := '0';    

    signal bit_cnt     : integer range 0 to 7 := 7;
    signal shift_reg   : std_logic_vector(7 downto 0); 
    signal phase       : integer range 0 to 4 := 0;
    signal ack_latched : std_logic := '0';             
    
    signal start_req   : std_logic := '0';

begin

    sda_t <= not sda_out_en;
    scl_t <= not scl_out_en;

    -- B? ??m cho SDA
    IOBUF_SDA_Inst : IOBUF
    generic map (
        DRIVE => 12,
        IOSTANDARD => "LVCMOS33",
        SLEW => "SLOW")
    port map (
        O   => sda_in_val,  
        IO  => sda,      
        I   => '0',       
        T   => sda_t   
    );

    IOBUF_SCL_Inst : IOBUF
    generic map (
        DRIVE => 12,
        IOSTANDARD => "LVCMOS33",
        SLEW => "SLOW")
    port map (
        O   => scl_in_val, 
        IO  => scl,
        I   => '0',
        T   => scl_t
    );

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            sda_sync_reg <= "11";
        elsif rising_edge(clk) then
            sda_sync_reg <= sda_sync_reg(0) & sda_in_val;
        end if;
    end process;
    
    sda_in_synced <= sda_sync_reg(1);

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            tick_cnt <= (others => '0');
            i2c_tick <= '0';
        elsif rising_edge(clk) then
            if tick_cnt >= unsigned(clk_div) then
                tick_cnt <= (others => '0');
                i2c_tick <= '1';
            else
                tick_cnt <= tick_cnt + 1;
                i2c_tick <= '0';
            end if;
        end if;
    end process;

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            start_req <= '0';
        elsif rising_edge(clk) then
            if start_scan = '1' then
                start_req <= '1';
            elsif current_state = START then
                start_req <= '0';
            end if;
        end if;
    end process;

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            current_state <= IDLE;
            sda_out_en <= '0'; 
            scl_out_en <= '0';
            busy <= '0';
            dev_found <= '0';
            phase <= 0;
            bit_cnt <= 7;
            ack_latched <= '0';
            
        elsif rising_edge(clk) then
            if i2c_tick = '1' then
                case current_state is
                    
                    when IDLE =>
                        sda_out_en <= '0'; 
                        scl_out_en <= '0';
                        busy <= '0';
                        phase <= 0;
                        if start_req = '1' then
                            shift_reg <= addr_in & '0'; 
                            busy <= '1';
                            dev_found <= '0';           
                            current_state <= START;
                        end if;

                    when START =>
                        case phase is
                            when 0 => 
                                sda_out_en <= '1';
                                scl_out_en <= '0';
                                phase <= 1;
                            when 1 =>
                                phase <= 2;
                            when others =>
                                scl_out_en <= '1'; 
                                current_state <= SHIFT_DATA;
                                bit_cnt <= 7;
                                phase <= 0;
                        end case;

                    when SHIFT_DATA =>
                        case phase is
                            when 0 => 
                                if shift_reg(bit_cnt) = '0' then
                                    sda_out_en <= '1'; 
                                else
                                    sda_out_en <= '0';
                                end if;
                                scl_out_en <= '1'; 
                                phase <= 1;
                            when 1 => 
                                scl_out_en <= '0'; 
                                phase <= 2;
                            when 2 => 
                                phase <= 3;
                            when 3 => 
                                scl_out_en <= '1'; 
                                if bit_cnt > 0 then
                                    bit_cnt <= bit_cnt - 1;
                                    phase <= 0;
                                else
                                    current_state <= READ_ACK;
                                    phase <= 0;
                                end if;
                            when others => phase <= 0;
                        end case;

                    when READ_ACK =>
                        sda_out_en <= '0'; 
                        case phase is
                            when 0 =>
                                scl_out_en <= '1';
                                phase <= 1;
                            when 1 =>
                                scl_out_en <= '0'; 
                                phase <= 2;
                            when 2 =>
                                if sda_in_synced = '0' then
                                    ack_latched <= '1'; 
                                else
                                    ack_latched <= '0'; 
                                end if;
                                phase <= 3;
                            when 3 =>
                                scl_out_en <= '1'; 
                                phase <= 4;
                            when 4 =>
                                current_state <= STOP;
                                phase <= 0;
                            when others => phase <= 0;
                        end case;

                    when STOP =>
                        case phase is
                            when 0 =>
                                sda_out_en <= '1'; 
                                scl_out_en <= '1'; 
                                phase <= 1;
                            when 1 =>
                                scl_out_en <= '0';
                                phase <= 2;
                            when 2 =>
                                sda_out_en <= '0'; 
                                phase <= 3;
                            when 3 =>
                                dev_found <= ack_latched;
                                busy <= '0';              
                                current_state <= IDLE;
                            when others => phase <= 0;
                        end case;
                        
                end case;
            end if; 
        end if;
    end process;

end Behavioral;