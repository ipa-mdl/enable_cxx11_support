cmake_minimum_required(VERSION 2.8.3)
project(enable_cxx11_support_test)

find_package(catkin REQUIRED COMPONENTS enable_cxx11_support)

catkin_package(CATKIN_DEPENDS enable_cxx11_support)

add_executable(enable_cxx11_support_test main.cpp)
