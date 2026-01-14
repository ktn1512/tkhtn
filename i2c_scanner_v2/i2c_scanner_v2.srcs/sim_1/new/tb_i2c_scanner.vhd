library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_i2c_scanner_core is
-- Testbench không c?n c?ng (Port)
end tb_i2c_scanner_core;

architecture Behavioral of tb_i2c_scanner_core is

    -- 1. Khai báo Component (Unit Under Test - UUT)
    component i2c_scanner_core
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
    end component;

    -- 2. Khai báo tín hi?u n?i dây
    signal clk         : std_logic := '0';
    signal rst_n       : std_logic := '0';
    signal start_scan  : std_logic := '0';
    signal addr_in     : std_logic_vector(6 downto 0) := (others => '0');
    signal clk_div     : std_logic_vector(15 downto 0) := x"0032"; -- Chia nh? ?? ch?y sim cho nhanh
    signal busy        : std_logic;
    signal dev_found   : std_logic;

    -- Tín hi?u hai chi?u
    signal sda         : std_logic;
    signal scl         : std_logic;

    -- Tín hi?u ph? ?? t?o ACK t? Testbench
    signal force_ack   : std_logic := '0'; -- 1: TB t? kéo SDA xu?ng (ACK), 0: Th?

    -- H?ng s? chu k? Clock (100MHz)
    constant CLK_PERIOD : time := 10 ns;

begin

    -- 3. Kh?i t?o UUT
    uut: i2c_scanner_core
    port map (
        clk         => clk,
        rst_n       => rst_n,
        start_scan  => start_scan,
        addr_in     => addr_in,
        clk_div     => clk_div,
        busy        => busy,
        dev_found   => dev_found,
        sda         => sda,
        scl         => scl
    );

    -- 4. T?o xung Clock
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- =========================================================================
    -- 5. MÔ PH?NG ??C TÍNH V?T LÝ I2C (QUAN TR?NG)
    -- =========================================================================
    
    -- I2C là Open-Drain. C?n mô ph?ng ?i?n tr? kéo lên (Pull-up resistor).
    -- 'H' trong VHDL là "Weak High" (M?c 1 y?u).
    -- N?u FPGA (IOBUF) ho?c Slave kéo '0', dây s? xu?ng '0'. N?u c? 2 th?, nó s? v? 'H' (t?c là '1').
    
    -- X? lý SDA: TB có th? kéo xu?ng (force_ack) ho?c ?? pull-up
    sda <= '0' when force_ack = '1' else 'H';
    
    -- X? lý SCL: Luôn có pull-up
    scl <= 'H';

    -- =========================================================================
    -- 6. STIMULUS PROCESS (K?ch b?n test)
    -- =========================================================================
    stim_proc: process
    begin
        -- B??c 1: Reset h? th?ng
        wait for 100 ns;
        rst_n <= '0';
        wait for 100 ns;
        rst_n <= '1';
        wait for 50 ns;

        -- Thi?t l?p b? chia t?n (Nh? thôi ?? mô ph?ng nhanh, v? d? 50 ticks)
        clk_div <= std_logic_vector(to_unsigned(50, 16)); 

        -- ---------------------------------------------------------------------
        -- TR??NG H?P 1: QUÉT ??A CH? KHÔNG T?N T?I (NACK)
        -- ---------------------------------------------------------------------
        report "TEST CASE 1: Quét ??a ch? 0x55 (Không có thi?t b?)";
        addr_in <= "1010101"; -- 0x55
        wait until rising_edge(clk);
        start_scan <= '1';    -- Kích ho?t
        wait until rising_edge(clk);
        start_scan <= '0';

        -- Ch? cho ??n khi core b?n (busy = 1)
        wait until busy = '1';
        
        -- Trong tr??ng h?p này, Testbench KHÔNG làm gì c?.
        -- SDA s? gi? m?c 'H' (NACK) t?i th?i ?i?m ACK.
        
        -- Ch? cho ??n khi quét xong (busy = 0)
        wait until busy = '0';
        
        -- Ki?m tra k?t qu?
        if dev_found = '0' then
            report "Pass: Không tìm th?y thi?t b? nh? mong ??i.";
        else
            report "Fail: Phát hi?n thi?t b? ma!";
        end if;

        wait for 1000 ns; -- Ngh? m?t chút

        -- ---------------------------------------------------------------------
        -- TR??NG H?P 2: QUÉT ??A CH? CÓ T?N T?I (ACK)
        -- ---------------------------------------------------------------------
        report "TEST CASE 2: Quét ??a ch? 0x68 (G?i là có thi?t b?)";
        addr_in <= "1101000"; -- 0x68 (V? d?: RTC DS3231)
        wait until rising_edge(clk);
        start_scan <= '1';
        wait until rising_edge(clk);
        start_scan <= '0';

        wait until busy = '1';

        -- [S?A L?I CH? NÀY]
        -- Thay s? 8 thành s? 9 (1 Start + 8 Data = 9 xung tr??c ACK)
        for i in 1 to 9 loop  
            wait until falling_edge(scl); 
        end loop;

        -- B?t ??u g?i ACK
        report "Slave Simulation: Sending ACK now...";
        force_ack <= '1'; 

        wait until falling_edge(scl); 
        force_ack <= '0'; -- Th? SDA ra ?? Master t?o STOP condition
        report "Slave Simulation: ACK Released.";

        -- Ch? k?t qu?
        wait until busy = '0';

        if dev_found = '1' then
            report "Pass: ?ã tìm th?y thi?t b? t?i 0x68!";
        else
            report "Fail: Không th?y thi?t b? d? ?ã g?i ACK.";
        end if;

        -- K?t thúc
        wait for 500 ns;
        report "SIMULATION FINISHED";
        wait;
    end process;

end Behavioral;