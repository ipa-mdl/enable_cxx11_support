cmake_minimum_required(VERSION 2.8.3)
project(forward_cxx11_support_test)

find_package(catkin REQUIRED COMPONENTS enable_cxx11_support_test)

catkin_package()

add_executable(forward_cxx11_support_test main.cpp)

target_link_libraries(forward_cxx11_support_test ${catkin_LIBRARIES}) 
