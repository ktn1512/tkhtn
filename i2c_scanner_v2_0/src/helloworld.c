#include <stdio.h>
#include <sleep.h>
#include "xparameters.h"
#include "xil_io.h"

#define I2C_SCANNER_BASEADDR    XPAR_I2C_SCANNER_0_S_AXI_BASEADDR
#define REG_CTRL_STATUS         0x00
#define REG_I2C_ADDR            0x04
#define REG_CLK_DIV             0x08

#define CTRL_START_BIT          (1 << 0)
#define STATUS_BUSY_BIT         (1 << 1)
#define STATUS_FOUND_BIT        (1 << 2)

#define CLK_DIV_100KHZ          250
#define SCAN_TIMEOUT_US         10000

void I2C_Scanner_Init(u32 clock_div) {
    Xil_Out32(I2C_SCANNER_BASEADDR + REG_CLK_DIV, clock_div);
    usleep(1000);
}

int I2C_Scanner_ScanAddress(u8 addr) {
    u32 status;
    u32 timeout_counter = 0;

    Xil_Out32(I2C_SCANNER_BASEADDR + REG_I2C_ADDR, addr & 0x7F);
    Xil_Out32(I2C_SCANNER_BASEADDR + REG_CTRL_STATUS, CTRL_START_BIT);
    usleep(10);

    while (1) {
        status = Xil_In32(I2C_SCANNER_BASEADDR + REG_CTRL_STATUS);

        if ((status & STATUS_BUSY_BIT) == 0) {
            if (status & STATUS_FOUND_BIT) {
                return 1;
            } else {
                return 0;
            }
        }

        usleep(10);
        timeout_counter += 10;
        if (timeout_counter > SCAN_TIMEOUT_US) {
            return -1;
        }
    }
}

void I2C_Scanner_ScanAll(void) {
    int result;
    int devices_found = 0;

    printf("\n========== BAT DAU QUET BUS I2C ==========\n");
    printf("Dang quet dia chi 0x08 - 0x77...\n\n");

    for (u8 addr = 0x08; addr <= 0x77; addr++) {
        result = I2C_Scanner_ScanAddress(addr);

        if (result == 1) {
            printf("  -> Tim thay thiet bi tai dia chi: 0x%02X\n", addr);
            devices_found++;
        }
    }

    printf("\n========== KET THUC QUET ==========\n");
    printf("Tong so thiet bi tim thay: %d\n", devices_found);
    printf("=======================================\n\n");
}

int main(void) {
    printf("\n\n============ QUET THIET BI I2C ============\n\n");

    I2C_Scanner_Init(CLK_DIV_100KHZ);

    I2C_Scanner_ScanAll();

    printf("Hoan thanh!\n\n");

    return 0;
}
