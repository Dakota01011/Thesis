#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xaxidma_hw.h"
#include "KNN_accelerator.h"
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
	u32 Length2 = NUM_FEATURES * ((NUM_POINTS-1)/2+1) * 4;

	printf("Input Array Address: %p\n\r", myIntDataSet);
	printf("Output Array Address: %i\n\r", (int)RX_BUFFER_BASE);

	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 1); // go into reset
	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG1_OFFSET, (NUM_POINTS-4)); // second starting point

	// Setup DMA
	//Reset
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
	XAxiDma_WriteReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, XAXIDMA_CR_RESET_MASK);
	while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}
	while((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}
	while((XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == 1) {}

	//MM2S 1 Setup
	u32 reg = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK); // start
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_DESTADDR_OFFSET, BuffInAddr); // addr in 1

	//MM2S 2 Setup
	reg = XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET);
	XAxiDma_WriteReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK); // start
	XAxiDma_WriteReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_DESTADDR_OFFSET, BuffInAddr + Length1); // addr in 2

	//S2MM Setup
	reg = XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET);
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET, reg | XAXIDMA_CR_RUNSTOP_MASK); // start
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_DESTADDR_OFFSET, BuffOutAddr); // addr out

	// GET START TIME
	u32 count1_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count1_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 0); // pull out of reset

	// Activate DMA
	//MM2S 1 Activate
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, Length1); //length

	//MM2S 2 Activate
	XAxiDma_WriteReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, Length2); //length

	//S2MM Activate
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_BUFFLEN_OFFSET, K*4); //length

	// Setup Complete

	//Wait for MM2S to complete
	while(XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_SR_OFFSET) != 4098) {}
	while(XAxiDma_ReadReg(XPAR_AXI_DMA_1_BASEADDR, XAXIDMA_TX_OFFSET + XAXIDMA_SR_OFFSET) != 4098) {}

	KNN_ACCELERATOR_mWriteReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG0_OFFSET, 2); // tell KNN that we are done
	while(XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET) != 4098) {}
	
	// GET FINISH TIME
	u32 count2_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count2_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	u64 count1 = (u64)count1_high*pow((u64)2,32) + (u64)count1_low;
	u64 count2 = (u64)count2_high*pow((u64)2,32) + (u64)count2_low;
	u64 diff = count2 - count1;
	printf("[FPGA] Time: %4.6f sec\n\r", diff*pow(10,-8));

	printf("[FPGA] K returns: \n\r");
	u32 results[K] = {48394, 40097, 25701, 3018, 16511, 24116, 27482, 35514, 21016, 13906, 29928, 40295, 33986, 47997, 45967, 44834, 37149, 16450, 26481, 43695, 12176, 34739, 7256, 35663, 10251};
	u32 passing = 1;
	for (int i = 0; i < K; i++) {
		u32 num = Xil_In32(((UINTPTR)myOutputArray) + (4*i));
		printf("[FPGA] ID: %i \n\r", (int)num);
		if (num != results[i])
		{
			passing = 0;
		}
	}
	if(passing)
	{
		printf("[FPGA] PASS \n\r");
	}
	else
	{
		printf("[FPGA] FAIL \n\r");
	}

	return 0;
}

