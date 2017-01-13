# enable_cxx11_support

This package can be used to enable C++11 support in catkin projects and to forward the support to downstream packages as well.

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/7bb483a721a14bde8225c14e2d01fae2)](https://www.codacy.com/app/ipa-mdl/enable_cxx11_support?utm_source=github.com&utm_medium=referral&utm_content=ipa-mdl/enable_cxx11_support&utm_campaign=badger)
[![Build Status](https://travis-ci.org/ipa-mdl/enable_cxx11_support.svg?branch=master)](https://travis-ci.org/ipa-mdl/enable_cxx11_support)

## Motivation

There are many different ways to enable support for C++11.
Most of them work with `-std=c++11` as a compiler flag.
Not all compilers support this and some might use C++11 or C++14 per default.
This packages tests if C++11 is supported out of the box (e.g. with GCC6 ).
If this is not the case, different flags get tested in order to provide C++11 compatibility.

Since the flags may vary, this package does not expose the flags, but executes a CMake function for downstream packages.
This enables a seamless release without hard-coded flags. 

## Usage

### C++11 support

To enable support for your package:

1. add `<build_depend>enable_cxx11_support</build_depend>` to your `package.xml`
2. use it in `CMakeLists.txt`: `find_package(catkin REQUIRED COMPONENTS enable_cxx11_support)` or `find_package(enable_cxx11_support REQUIRED)`

### Forward support

To forward the support to dependent packages:

1. enable C++11 support (as described above)
2. add `<build_export_depend>enable_cxx11_support</build_export_depend>` (`<run_depend>enable_cxx11_support</run_depend>` for format V1) to your `package.xml`. 
3. export it in your `CMakeLists.txt`:  `catkin_package(CATKIN_DEPENDS enable_cxx11_support)`
