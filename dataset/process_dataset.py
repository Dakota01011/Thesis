from convert_fixed_point import convert_fp
from data_code_gen import code_gen
from channel_data_format import data_format

K = 10
FP = False
name = 'training-data3'

if FP:
    convert_fp(name)
data_format(name)
code_gen(K, name)
