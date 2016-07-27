#ifndef KNN_FPGAHELPER_H
#define KNN_FPGAHELPER_H

#include "xbasic_types.h"

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
};


#endif //KNN_FPGAHELPER_H
