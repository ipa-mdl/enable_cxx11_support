if(CMAKE_VERSION VERSION_LESS 2.8.12)
function(add_compile_options)
  add_definitions(${ARGV})
endfunction()
endif()

find_package(Threads REQUIRED)

if(NOT CMAKE_HAVE_THREADS_LIBRARY)
  message(FATAL_ERROR "Could not enable C++ thread support.")
endif()

if(DEFINED CMAKE_USE_PTHREADS_INIT)
  add_compile_options("-pthread")
endif()

list(APPEND enable_cxx_thread_support_LIBRARIES ${CMAKE_THREAD_LIBS_INIT})