#include <iostream>
//#include <stdlib.h>
#include <unistd.h>
#include "FPGAHelper.h"
#include "platform.h"
#include "xparameters.h"
#include "KNN_accelerator.h"
using namespace std;

// REG0: {29'bX, load ref, done, reset}
// REG1: k
// REG2: ref data in
// REG3: data name in
// REG4: data value in
// REG5: data name out
// REG6: data value out

FPGAHelper::FPGAHelper() {
    std::cout << "[FPGA] Initializing FPGA platform" << std::endl;
    init_platform();
}

FPGAHelper::~FPGAHelper() {
    std::cout << "[FPGA] Cleaning up FPGA platform" << std::endl;
    cleanup_platform();
}

void FPGAHelper::reset() {
    std::cout << "[FPGA] Write 10 to reset bit" << std::endl;
    u32 regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
    regval = regval | 1;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
    sleep(500);
    regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
	regval = regval & ~1;
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeK(int k) {
    std::cout << "[FPGA] Write to k register: " << k << std::endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG1_OFFSET, k);
    //*(baseaddr_p+1) = (Xuint32)k;
}

void FPGAHelper::writeLoadBit(int i) {
    std::cout << "[FPGA] Write to load bit: " << i << std::endl;
    u32 regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
	regval = regval | 4;
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeReadEn(int i) {
    std::cout << "[FPGA] Writing to readEn bit: " << i << std::endl;
    u32 regval = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
	regval = regval | 2;
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeRefData(int i) {
    std::cout << "[FPGA] Writing to refdatain register: " << i << std::endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET, i);
    //*(baseaddr_p+2) = (Xuint32)i;
}

void FPGAHelper::writeDataValue(int i) {
    std::cout << "[FPGA] Writing to datavaluein register: " << i << std::endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG4_OFFSET, i);
    //*(baseaddr_p+4) = (Xuint32)i;
}

void FPGAHelper::writeDataName(int i) {
    std::cout << "[FPGA] Writing to datanamein register: " << i << std::endl;
    KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET, i);
    //*(baseaddr_p+3) = (Xuint32)i;
}

void FPGAHelper::readDataName() {
	u32 num = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG5_OFFSET);
    std::cout << "[FPGA] Reading from datanameout: " << num << std::endl;
}

void FPGAHelper::readDataValue() {
	u32 num = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG6_OFFSET);
    std::cout << "[FPGA] Reading from datavalueout: " << num << std::endl;
}
