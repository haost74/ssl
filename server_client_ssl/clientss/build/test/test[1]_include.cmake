if(EXISTS "/home/haost/prodject/C++/clientss/build/test/test[1]_tests.cmake")
  include("/home/haost/prodject/C++/clientss/build/test/test[1]_tests.cmake")
else()
  add_test(test_NOT_BUILT test_NOT_BUILT)
endif()
