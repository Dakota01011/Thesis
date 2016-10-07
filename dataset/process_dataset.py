from data_code_gen import code_gen
from channel_data_format import data_format

K = 10
name = 'training-data3'

data_format(name)
code_gen(K, name)
