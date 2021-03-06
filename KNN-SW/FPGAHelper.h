#ifndef KNN_FPGAHELPER_H
#define KNN_FPGAHELPER_H

#include "FPGA/xbasic_types.h"
#include "FPGA/xparameters.h"

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
    void writeDataValue(int i);
    void writeDataName(int i);

    int readDataName();
    int readDataValue();

private:
    Xuint32 *baseaddr_p = (Xuint32 *)XPAR_KNNCALCULATOR_0_S00_AXI_BASEADDR;
};


#endif //KNN_FPGAHELPER_H
