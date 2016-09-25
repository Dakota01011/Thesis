#include "FPGAHelper.h"

// REG0: {29'bX, load ref, done, reset}
// REG1: k
// REG2: ref data in
// REG3: data name in
// REG4: data value in
// REG5: data name out
// REG6: data value out

FPGAHelper::FPGAHelper() {
	printf("[FPGA] Initializing FPGA platform\n\r");
	//cout << "[FPGA] Initializing FPGA platform" << endl;
	init_platform();
}

FPGAHelper::~FPGAHelper() {
	printf("[FPGA] Cleaning up FPGA platform\n\r");
	//cout << "[FPGA] Cleaning up FPGA platform" << endl;
	cleanup_platform();
}

void FPGAHelper::reset() {
	//printf("[FPGA] Write to reset bit\n\r");
	//cout << "[FPGA] Write to reset bit" << endl;
	WriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 1);
	sleep(0.5);
	WriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 0);
}

void FPGAHelper::writeK(int k) {
	//printf("[FPGA] Write to k register: %i \n\r", k);
	//cout << "[FPGA] Write to k register: " << k << endl;
	WriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG1_OFFSET, k);
}

void FPGAHelper::writeLoadBit(int i) {
	u32 regval = ReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET);
	if (i)
	{
		regval = regval | 4;
	}
	else
	{
		regval = regval & ~4;
	}
	//printf("[FPGA] Write to load bit: %i \n\r", regval);
	//cout << "[FPGA] Write to load bit: " << regval << endl;
	WriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

void FPGAHelper::writeReadEn(int i) {
	u32 regval = 4;
	if (i)
	{
		regval = regval | 2;
	}
	else
	{
		regval = regval & ~2;
	}
	//printf("[FPGA] Writing to readEn bit: %i \n\r", regval);
	//cout << "[FPGA] Writing to readEn bit: " << regval << endl;
	WriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, regval);
}

bool FPGAHelper::activateDMA(UINTPTR BuffInAddr, UINTPTR BuffOutAddr, u32 Length, u32 k) {

	bool flag = true;

	if (Length <= MaxLength)
	{
		//Reset
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
		while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
		while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}

		//MM2S
		u32 reg = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_SRCADDR_OFFSET, BuffInAddr);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, Length);

		//S2MM
		reg = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_DESTADDR_OFFSET, BuffOutAddr);
		XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, k*4);

		while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_SR_OFFSET) & XAXIDMA_IDLE_MASK) == 0)
		{}
	}
	else
	{
		printf("[FPGA] Transfer Length too long!!! \n\r");
	}

	return flag;
}

void FPGAHelper::readDataName() {
	u32 num = ReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG4_OFFSET);
	printf("[FPGA] Reading from datanameout: %i \n\r", (int)num);
	//cout << "[FPGA] Reading from datanameout: " << num << endl;
}

void FPGAHelper::readDataValue() {
	u32 num = ReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG5_OFFSET);
	printf("[FPGA] Reading from datavalueout: %i \n\r", (int)num);
	//cout << "[FPGA] Reading from datavalueout: " << num << endl;
}
