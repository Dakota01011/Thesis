cmake_minimum_required(VERSION 3.5)
project(KNN)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES main.cpp DataPoint.cpp DataPoint.h DistanceComparator.cpp DistanceComparator.h KNN.cpp KNN.h FPGAHelper.cpp FPGAHelper.h)
add_executable(KNN ${SOURCE_FILES})