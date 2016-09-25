#include <iostream>
#include <stdio.h>
#include "xil_io.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "KNN.h"
#include "KNN_accelerator.h"
#include "platform.h"
#include "DataSet.h"
using namespace std;

#define RX_BUFFER_BASE 0x00500000

u32 *myOutputArray = (u32 *) RX_BUFFER_BASE;

int main() {

	init_platform();
	print("Now calculating...\n\r");

	printf("Input Array Address: %p\n\r", myIntDataSet);
	printf("Output Array Address: %i\n\r", RX_BUFFER_BASE);

	u32 count1_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count1_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	KNN::kNNFPGAClassify(myIntDataSet, myOutputArray, K);
	
	u32 count2_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count2_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);

	u64 count1 = (u64)count1_high*pow((u64)2,32) + (u64)count1_low;
	u64 count2 = (u64)count2_high*pow((u64)2,32) + (u64)count2_low;
	u64 diff = count2 - count1;
	printf("[FPGA] Time: %4.6f sec\n\r", diff*pow(10,-8));

	//Xil_DCacheFlush();
	//Xil_DCacheInvalidateRange((u32)myOutputArray, K*4);

	/*
	for (int i = 0; i < K; i++) {
		XAxiDma_Out32(((UINTPTR)myOutputArray) + (4*i), (i));
	}
	*/

	printf("[FPGA] K returns: \n\r");
	for (int i = 0; i < K; i++) {
		u32 num = Xil_In32(((UINTPTR)myOutputArray) + (4*i));
		printf("[FPGA] ID: %i \n\r", (int)num);
	}

	return 0;
}

