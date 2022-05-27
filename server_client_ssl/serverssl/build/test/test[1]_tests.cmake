add_test( HelloTest.BasicAssertions [==[/home/haost/prodject/C++/serverssl/build/test/test]==] [==[--gtest_filter=HelloTest.BasicAssertions]==] --gtest_also_run_disabled_tests)
set_tests_properties( HelloTest.BasicAssertions PROPERTIES WORKING_DIRECTORY [==[/home/haost/prodject/C++/serverssl/build/test]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( test_TESTS HelloTest.BasicAssertions)
