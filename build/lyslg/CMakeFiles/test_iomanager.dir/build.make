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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/lyslg/Documents/chat_room

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lyslg/Documents/chat_room/build

# Include any dependencies generated for this target.
include lyslg/CMakeFiles/test_iomanager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lyslg/CMakeFiles/test_iomanager.dir/compiler_depend.make

# Include the progress variables for this target.
include lyslg/CMakeFiles/test_iomanager.dir/progress.make

# Include the compile flags for this target's objects.
include lyslg/CMakeFiles/test_iomanager.dir/flags.make

lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o: lyslg/CMakeFiles/test_iomanager.dir/flags.make
lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o: ../lyslg/tests/test_iomanager.cc
lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o: lyslg/CMakeFiles/test_iomanager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_iomanager.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o -MF CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o.d -o CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o -c /home/lyslg/Documents/chat_room/lyslg/tests/test_iomanager.cc

lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.i"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_iomanager.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/lyslg/tests/test_iomanager.cc > CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.i

lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.s"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_iomanager.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/lyslg/tests/test_iomanager.cc -o CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.s

# Object files for target test_iomanager
test_iomanager_OBJECTS = \
"CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o"

# External object files for target test_iomanager
test_iomanager_EXTERNAL_OBJECTS =

../lyslg/bin/test_iomanager: lyslg/CMakeFiles/test_iomanager.dir/tests/test_iomanager.cc.o
../lyslg/bin/test_iomanager: lyslg/CMakeFiles/test_iomanager.dir/build.make
../lyslg/bin/test_iomanager: ../lyslg/lib/liblyslg.so
../lyslg/bin/test_iomanager: lyslg/CMakeFiles/test_iomanager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../lyslg/bin/test_iomanager"
	cd /home/lyslg/Documents/chat_room/build/lyslg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_iomanager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lyslg/CMakeFiles/test_iomanager.dir/build: ../lyslg/bin/test_iomanager
.PHONY : lyslg/CMakeFiles/test_iomanager.dir/build

lyslg/CMakeFiles/test_iomanager.dir/clean:
	cd /home/lyslg/Documents/chat_room/build/lyslg && $(CMAKE_COMMAND) -P CMakeFiles/test_iomanager.dir/cmake_clean.cmake
.PHONY : lyslg/CMakeFiles/test_iomanager.dir/clean

lyslg/CMakeFiles/test_iomanager.dir/depend:
	cd /home/lyslg/Documents/chat_room/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyslg/Documents/chat_room /home/lyslg/Documents/chat_room/lyslg /home/lyslg/Documents/chat_room/build /home/lyslg/Documents/chat_room/build/lyslg /home/lyslg/Documents/chat_room/build/lyslg/CMakeFiles/test_iomanager.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lyslg/CMakeFiles/test_iomanager.dir/depend

