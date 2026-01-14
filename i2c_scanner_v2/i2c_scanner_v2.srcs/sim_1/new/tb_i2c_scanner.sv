`timescale 1ns / 1ps

import axi_vip_pkg::*;
import design_1_axi_vip_0_0_pkg::*; 

module tb_design_1();

    // 1. Tín hi?u k?t n?i
    bit aclk_0    = 0;
    bit aresetn_0 = 0;
    wire SDA_0;
    wire SCL_0;

    // Logic gi? l?p Slave
    logic slave_sda_drive = 1'bZ; 
    
    // Danh sách các Slave Active
    bit [6:0] active_slaves[$] = {7'h50, 7'h52};

    // ??a ch? (Mapping theo IP c?a b?n)
    localparam BASE_ADDR = 32'h0000_0000;
    localparam REG_CTRL = BASE_ADDR + 32'h00; 
    localparam REG_ADDR = BASE_ADDR + 32'h04; 
    localparam REG_DIV  = BASE_ADDR + 32'h08; 

    // Khai báo Agent
        design_1_axi_vip_0_0_mst_t      master_agent;
    xil_axi_resp_t                  resp;

    // 2. INSTANTIATE DUT
    design_1_wrapper DUT (
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0),
        .SDA_0(SDA_0),
        .SCL_0(SCL_0)
    );

    // 3. CLOCK & PULLUP
    always #5 aclk_0 = ~aclk_0; // 100MHz

    pullup(SDA_0);
    pullup(SCL_0);
    assign SDA_0 = slave_sda_drive;

    // 4. MAIN PROCESS
    initial begin
        $display("--------------------------------------------------");
        $display("--- SIMULATION START: I2C SCANNER (SLOW & STABLE) ---");
        
        // Reset
        aresetn_0 = 0;
        #200;
        aresetn_0 = 1;
        #200;

        // Start AXI VIP
        master_agent = new("master_agent", DUT.design_1_i.axi_vip_0.inst.IF);
        master_agent.start_master();

        // --- [FIX 1] T?NG CLOCK DIVIDER ---
        // 250 (decimal) = 0xFA. 
        // 100MHz / 250 = 400kHz tick -> I2C SCL ~ 100kHz.
        // T?c ?? ch?m giúp Slave Model b?t tín hi?u chu?n h?n.
        master_agent.AXI4LITE_WRITE_BURST(REG_DIV, 0, 250, resp);
        $display("[INFO] Clock Divider set to 250 (Standard Speed)");

        // --- LOOP QUÉT ---
        for (int addr = 'h4E; addr <= 'h53; addr++) begin
            scan_address(addr); 
            #200000; // Ngh? lâu h?n m?t chút ?? tách bi?t các transaction
        end

        $display("--------------------------------------------------");
        $display("--- SIMULATION FINISHED ---");
        $finish;
    end

    // =========================================================================
    // TASK: Th?c hi?n quy trình quét 1 ??a ch? (?Ã S?A L?I RACE CONDITION)
    // =========================================================================
    task scan_address(input int addr);
        bit [31:0] read_val;
        bit expected;
        string result_str;

        // 1. Xác ??nh k? v?ng
        expected = 0;
        foreach (active_slaves[i]) begin
            if (active_slaves[i] == addr) expected = 1;
        end

        // 2. Ghi ??a ch? vào REG_ADDR
        master_agent.AXI4LITE_WRITE_BURST(REG_ADDR, 0, addr, resp);
        
        // 3. Ghi Start bit vào REG_CTRL
        master_agent.AXI4LITE_WRITE_BURST(REG_CTRL, 0, 1, resp);

        // [QUAN TR?NG - S?A L?I T?I ?ÂY]
        // Ch? 5us ?? ??m b?o Core k?p nh?n l?nh và ??y bit BUSY lên 1.
        // Vì i2c_tick chu k? là 2.5us (khi Div=250), ta ch? 5us cho ch?c ch?n.
        #5000; 

        // 4. Ch? bit Busy v? 0 (Polling)
        do begin
            master_agent.AXI4LITE_READ_BURST(REG_CTRL, 0, read_val, resp);
            #1000;
        end while (read_val[1] == 1);

        // 5. Ki?m tra k?t qu? (Bit 2)
        if (read_val[2] == expected) begin
            result_str = (expected) ? "FOUND (Correct)" : "NOT FOUND (Correct)";
            $display("[PASS] Master Scan 0x%h : %s", addr, result_str);
        end else begin
            $error("[FAIL] Master Scan 0x%h : Expected %b but got %b", addr, expected, read_val[2]);
        end
    endtask

    // =========================================================================
    // 5. SLAVE MODEL C?I TI?N (CÓ DEBUG LOG)
    // =========================================================================
    logic [7:0] shift_data;
    
    initial begin
        forever begin
            slave_sda_drive = 1'bZ;
            
            // A. Phát hi?n Start: SDA xu?ng khi SCL ?ang cao
            @(negedge SDA_0);
            if (SCL_0 == 1'b1) begin
                // $display("[SLAVE] Start Condition Detected");
                
                // B. Nh?n 8 bit
                for(int i=0; i<8; i++) begin
                    @(posedge SCL_0); 
                    shift_data = {shift_data[6:0], SDA_0};
                end
                
                // C. X? lý ACK/NACK
                @(negedge SCL_0); // Chu?n b? lái ACK t?i s??n xu?ng th? 8
                
                // shift_data[7:1] là 7-bit ??a ch?
                // $display("[SLAVE] Received Addr: 0x%h (Raw: 0x%h)", shift_data[7:1], shift_data);

                if (check_active_slave(shift_data[7:1])) begin
                    slave_sda_drive = 1'b0; // ACK
                    // $display("[SLAVE] -> ACK Address 0x%h", shift_data[7:1]);
                end else begin
                    slave_sda_drive = 1'bZ; // NACK
                end
                
                // D. Th? ACK t?i s??n xu?ng th? 9
                @(negedge SCL_0);
                slave_sda_drive = 1'bZ;
            end
        end
    end

    function bit check_active_slave(bit [6:0] check_addr);
        foreach (active_slaves[i]) begin
            if (active_slaves[i] == check_addr) return 1;
        end
        return 0;
    endfunction

endmodule