#include <iostream>
#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "KNN.h"
#include "KNN_accelerator.h"
#include "platform.h"
#include "DataSet.h"
using namespace std;

int main() {

	init_platform();
	print("Hello!\n\r");

	int myIntDataSet[NUM_POINTS][NUM_FEATURES];
	DataSet set;
	set.getMyIntDataSet(myIntDataSet);

	// testPoint at location (2, 2, 2, 2, 2)
	int testPoint[NUM_FEATURES] = {-1, 1, 2, 2, 2, 3, 4, 5, 5, 5, 6};

	print("Now calculating...\n\r");

	int k = 10;
	u32 count1_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count1_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);
	KNN::kNNClassify(testPoint, myIntDataSet, k);
	u32 count2_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	u32 count2_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);
	u64 count1 = (u64)count1_high*pow((u64)2,32) + (u64)count1_low;
	u64 count2 = (u64)count2_high*pow((u64)2,32) + (u64)count2_low;
	u64 diff = count2 - count1;
	printf("[Standard] Time: %4.6f sec\n\r", diff*pow(10,-8));
	//cout << "[Standard] Time: " << diff*pow(10,-8) << "sec" << endl;

	count1_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	count1_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);
	KNN::kNNFPGAClassify(testPoint, myIntDataSet, k);
	count2_low = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG2_OFFSET);
	count2_high = KNN_ACCELERATOR_mReadReg(XPAR_KNN_ACCELERATOR_0_S00_AXI_BASEADDR, KNN_ACCELERATOR_S00_AXI_SLV_REG3_OFFSET);
	count1 = (u64)count1_high*pow((u64)2,32) + (u64)count1_low;
	count2 = (u64)count2_high*pow((u64)2,32) + (u64)count2_low;
	diff = count2 - count1;
	printf("[FPGA] Time: %4.6f sec\n\r", diff*pow(10,-8));
	//cout << "[FPGA] Time: " << diff*pow(10,-8) << "sec" << endl;

	while(1)
	{

	}
}

