cmake_minimum_required(VERSION 2.8.3)
project(enable_cxx11_support)
find_package(catkin REQUIRED)

catkin_package(
  CFG_EXTRAS enable_cxx11_support-extras.cmake
)
