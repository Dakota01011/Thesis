#include "FPGAHelper.h"

// REG0: {29'bX, load ref, done, reset}
// REG1: k
// REG2: ref data in
// REG3: data name in
// REG4: data value in
// REG5: data name out
// REG6: data value out

FPGAHelper::FPGAHelper() {
    cout << "[FPGA] Initializing FPGA platform" << endl;
    init_platform();
}

FPGAHelper::~FPGAHelper() {
    cout << "[FPGA] Cleaning up FPGA platform" << endl;
    cleanup_platform();
}

void FPGAHelper::reset() {
    cout << "[FPGA] Write to reset bit" << endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 1);
    sleep(0.5);
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 0);
}

void FPGAHelper::writeK(int k) {
    cout << "[FPGA] Write to k register: " << k << endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG1_OFFSET, k);
}

void FPGAHelper::writeLoadBit(int i) {
    u32 regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
    if (i)
    {
    	regval = regval | 4;
	}
    else
    {
    	regval = regval & ~4;
	}
    cout << "[FPGA] Write to load bit: " << regval << endl;
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeReadEn(int i) {
    u32 regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
    if (i)
    {
    	regval = regval | 2;
	}
    else
    {
    	regval = regval & ~2;
	}
    cout << "[FPGA] Writing to readEn bit: " << regval << endl;
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeRefData(int i) {
    cout << "[FPGA] Writing to refdatain register: " << i << endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET, i);
}

void FPGAHelper::writeDataValue(int i) {
    cout << "[FPGA] Writing to datavaluein register: " << i << endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG4_OFFSET, i);
}

void FPGAHelper::writeDataName(int i) {
    cout << "[FPGA] Writing to datanamein register: " << i << endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET, i);
}

void FPGAHelper::readDataName() {
	u32 num = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG5_OFFSET);
    cout << "[FPGA] Reading from datanameout: " << num << endl;
}

void FPGAHelper::readDataValue() {
	u32 num = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG6_OFFSET);
    cout << "[FPGA] Reading from datavalueout: " << num << endl;
}
