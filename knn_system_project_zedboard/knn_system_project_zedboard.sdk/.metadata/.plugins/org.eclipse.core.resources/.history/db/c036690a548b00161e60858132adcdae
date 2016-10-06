#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xaxidma_hw.h"
#include "KNN_accelerator.h"
#include "KNN_DMA.h"
#include "platform.h"
#include "DataSet.h"
using namespace std;

int main() {

	init_platform();
	print("Now calculating...\n\r");

	u32 RX_BUFFER_BASE = 0x00500000;
	u32 *myOutputArray = (u32 *) RX_BUFFER_BASE;
	UINTPTR BuffInAddr = (UINTPTR)myIntDataSet;
	UINTPTR BuffOutAddr = (UINTPTR)myOutputArray;
	u32 Length1 = NUM_FEATURES * (((NUM_POINTS-1)/2)+1) * 4;
	u32 Length2 = NUM_FEATURES * ((NUM_POINTS-1)/2) * 4;

	printf("Input Array Address: %p\n\r", myIntDataSet);
	printf("Output Array Address: %i\n\r", (int)RX_BUFFER_BASE);

	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 1);

	// GET START TIME
	u32 count1_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count1_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	// reset it by writing a 1 and then a 0 to the reset bit in the control reg
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 0);

	// Activate DMA
	KNN_DMA_mWriteReg(XPAR_KNN_DMA_0_S_AXI_LITE_BASEADDR, KNN_DMA_S_AXI_LITE_SLV_REG2_OFFSET, BuffInAddr); // addr0
	KNN_DMA_mWriteReg(XPAR_KNN_DMA_0_S_AXI_LITE_BASEADDR, KNN_DMA_S_AXI_LITE_SLV_REG3_OFFSET, Length1); // len0
	KNN_DMA_mWriteReg(XPAR_KNN_DMA_0_S_AXI_LITE_BASEADDR, KNN_DMA_S_AXI_LITE_SLV_REG4_OFFSET, BuffInAddr+Length1); // addr1
	KNN_DMA_mWriteReg(XPAR_KNN_DMA_0_S_AXI_LITE_BASEADDR, KNN_DMA_S_AXI_LITE_SLV_REG5_OFFSET, Length2); // len1
	KNN_DMA_mWriteReg(XPAR_KNN_DMA_0_S_AXI_LITE_BASEADDR, KNN_DMA_S_AXI_LITE_SLV_REG0_OFFSET, 1); // control

	//Reset
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
	while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}

	//S2MM
	u32 reg = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_DESTADDR_OFFSET, BuffOutAddr);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, K*4);

	//MM2S
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK);

	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 2);
	while(XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET) != 4098)
	{}
	
	// GET FINISH TIME
	u32 count2_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count2_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	u64 count1 = (u64)count1_high*pow((u64)2,32) + (u64)count1_low;
	u64 count2 = (u64)count2_high*pow((u64)2,32) + (u64)count2_low;
	u64 diff = count2 - count1;
	printf("[FPGA] Time: %4.6f sec\n\r", diff*pow(10,-8));

	printf("[FPGA] K returns: \n\r");
	for (int i = 0; i < K; i++) {
		u32 num = Xil_In32(((UINTPTR)myOutputArray) + (4*i));
		printf("[FPGA] ID: %i \n\r", (int)num);
	}

	return 0;
}

