# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haost/prodject/C++/serverssl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haost/prodject/C++/serverssl/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test.dir/flags.make

test/CMakeFiles/test.dir/test.cc.o: test/CMakeFiles/test.dir/flags.make
test/CMakeFiles/test.dir/test.cc.o: ../test/test.cc
test/CMakeFiles/test.dir/test.cc.o: test/CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haost/prodject/C++/serverssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test.dir/test.cc.o"
	cd /home/haost/prodject/C++/serverssl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test.dir/test.cc.o -MF CMakeFiles/test.dir/test.cc.o.d -o CMakeFiles/test.dir/test.cc.o -c /home/haost/prodject/C++/serverssl/test/test.cc

test/CMakeFiles/test.dir/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/test.cc.i"
	cd /home/haost/prodject/C++/serverssl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/haost/prodject/C++/serverssl/test/test.cc > CMakeFiles/test.dir/test.cc.i

test/CMakeFiles/test.dir/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/test.cc.s"
	cd /home/haost/prodject/C++/serverssl/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/haost/prodject/C++/serverssl/test/test.cc -o CMakeFiles/test.dir/test.cc.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test.cc.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test/test: test/CMakeFiles/test.dir/test.cc.o
test/test: test/CMakeFiles/test.dir/build.make
test/test: lib/libgtest_main.a
test/test: lib/libgmock_main.a
test/test: lib/libgmock.a
test/test: lib/libgtest.a
test/test: test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haost/prodject/C++/serverssl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test"
	cd /home/haost/prodject/C++/serverssl/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/haost/prodject/C++/serverssl/build/test && /usr/bin/cmake -D TEST_TARGET=test -D TEST_EXECUTABLE=/home/haost/prodject/C++/serverssl/build/test/test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/haost/prodject/C++/serverssl/build/test -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_TESTS -D CTEST_FILE=/home/haost/prodject/C++/serverssl/build/test/test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/CMakeFiles/test.dir/build: test/test
.PHONY : test/CMakeFiles/test.dir/build

test/CMakeFiles/test.dir/clean:
	cd /home/haost/prodject/C++/serverssl/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test.dir/clean

test/CMakeFiles/test.dir/depend:
	cd /home/haost/prodject/C++/serverssl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haost/prodject/C++/serverssl /home/haost/prodject/C++/serverssl/test /home/haost/prodject/C++/serverssl/build /home/haost/prodject/C++/serverssl/build/test /home/haost/prodject/C++/serverssl/build/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test.dir/depend

