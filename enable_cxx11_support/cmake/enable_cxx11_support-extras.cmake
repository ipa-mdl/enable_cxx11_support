if(CMAKE_VERSION VERSION_LESS 2.8.12)
function(add_compile_options)
  add_definitions(${ARGV})
endfunction()
endif()

function(test_and_enable_cxx11_support flag tag was_enabled enable)
  if(NOT was_enabled)
    include(CheckCXXSourceCompiles)
    set(name "ENABLE_CXX11_SUPPORT_${tag}_SUPPORTED")
    set(CMAKE_REQUIRED_FLAGS "${flag}")
    check_cxx_source_compiles(
      "#include <memory>\nint main() {auto p = std::make_shared<int>(0); return *p;}"
      ${name}
    )
    set(result ${${name}})
    if((result) AND (NOT "${flag}" STREQUAL ""))
       message(STATUS "add compile option '${flag}' for ${CMAKE_CURRENT_SOURCE_DIR}")
       add_compile_options(${flag})
    endif()
    set(${enable} ${result} PARENT_SCOPE)
  endif()
endfunction()

function(enable_cxx11_support)

  test_and_enable_cxx11_support(""           ALREADY "${enabled}" enabled)
  test_and_enable_cxx11_support("-std=c++11" CXX11   "${enabled}" enabled)
  test_and_enable_cxx11_support("-std=c++0x" CXX0X "  ${enabled}" enabled)
  
  if(NOT enabled)
    message(FATAL_ERROR "Could not enable C++11 support.")
  endif()
endfunction()

enable_cxx11_support()
