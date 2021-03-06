#include <iostream>
#include "FPGAHelper.h"
#include "FPGA/platform.h"

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
    *(baseaddr_p+0) = 10;
}

void FPGAHelper::writeK(int k) {
    std::cout << "[FPGA] Write to k register: " << k << std::endl;
    *(baseaddr_p+1) = (Xuint32)k;
}

void FPGAHelper::writeLoadBit(int i) {
    std::cout << "[FPGA] Write to load bit: " << i << std::endl;
}

void FPGAHelper::writeReadEn(int i) {
    std::cout << "[FPGA] Writing to readEn bit: " << i << std::endl;
}

void FPGAHelper::writeRefData(int i) {
    std::cout << "[FPGA] Writing to refdatain register: " << i << std::endl;
    *(baseaddr_p+2) = (Xuint32)i;
}

void FPGAHelper::writeDataValue(int i) {
    std::cout << "[FPGA] Writing to datavaluein register: " << i << std::endl;
    *(baseaddr_p+4) = (Xuint32)i;
}

void FPGAHelper::writeDataName(int i) {
    std::cout << "[FPGA] Writing to datanamein register: " << i << std::endl;
    *(baseaddr_p+3) = (Xuint32)i;
}

int FPGAHelper::readDataName() {
    std::cout << "[FPGA] Reading from datanameout" << std::endl;
    return (int)*(baseaddr_p+5);
}

int FPGAHelper::readDataValue() {
    std::cout << "[FPGA] Reading from datavalueout" << std::endl;
    return (int)*(baseaddr_p+6);
}














