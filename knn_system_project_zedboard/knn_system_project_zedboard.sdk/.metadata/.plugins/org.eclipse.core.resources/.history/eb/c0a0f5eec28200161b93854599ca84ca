#ifndef KNN_FPGAHELPER_H
#define KNN_FPGAHELPER_H

#include <iostream>
#include <stdio.h>
#include <unistd.h>
#include "xil_types.h"
#include "xil_io.h"
#include "xparameters.h"
#include "platform.h"
#include "KNN_accelerator.h"
#include "xaxidma_hw.h"
using namespace std;

#define WriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

#define ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

#define MaxLength 16777215 // 0xFF_FFFF

class FPGAHelper {
public:
    FPGAHelper();
    ~FPGAHelper();

    // FPGA helper operations
    void reset();
    void writeK(int k);
    void writeLoadBit(int i);
    void writeReadEn(int i);
    void writeRefData(int i);
    bool activateDMA(UINTPTR BuffInAddr, UINTPTR BuffOutAddr, u32 Length, u32 k);

    void readDataName();
    void readDataValue();
};


#endif //KNN_FPGAHELPER_H
