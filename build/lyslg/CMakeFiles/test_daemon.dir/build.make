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
include lyslg/CMakeFiles/test_daemon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lyslg/CMakeFiles/test_daemon.dir/compiler_depend.make

# Include the progress variables for this target.
include lyslg/CMakeFiles/test_daemon.dir/progress.make

# Include the compile flags for this target's objects.
include lyslg/CMakeFiles/test_daemon.dir/flags.make

lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o: lyslg/CMakeFiles/test_daemon.dir/flags.make
lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o: ../lyslg/tests/test_daemon.cc
lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o: lyslg/CMakeFiles/test_daemon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_daemon.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o -MF CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o.d -o CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o -c /home/lyslg/Documents/chat_room/lyslg/tests/test_daemon.cc

lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_daemon.dir/tests/test_daemon.cc.i"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_daemon.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/lyslg/tests/test_daemon.cc > CMakeFiles/test_daemon.dir/tests/test_daemon.cc.i

lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_daemon.dir/tests/test_daemon.cc.s"
	cd /home/lyslg/Documents/chat_room/build/lyslg && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_daemon.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/lyslg/tests/test_daemon.cc -o CMakeFiles/test_daemon.dir/tests/test_daemon.cc.s

# Object files for target test_daemon
test_daemon_OBJECTS = \
"CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o"

# External object files for target test_daemon
test_daemon_EXTERNAL_OBJECTS =

../lyslg/bin/test_daemon: lyslg/CMakeFiles/test_daemon.dir/tests/test_daemon.cc.o
../lyslg/bin/test_daemon: lyslg/CMakeFiles/test_daemon.dir/build.make
../lyslg/bin/test_daemon: ../lyslg/lib/liblyslg.so
../lyslg/bin/test_daemon: lyslg/CMakeFiles/test_daemon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../lyslg/bin/test_daemon"
	cd /home/lyslg/Documents/chat_room/build/lyslg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_daemon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lyslg/CMakeFiles/test_daemon.dir/build: ../lyslg/bin/test_daemon
.PHONY : lyslg/CMakeFiles/test_daemon.dir/build

lyslg/CMakeFiles/test_daemon.dir/clean:
	cd /home/lyslg/Documents/chat_room/build/lyslg && $(CMAKE_COMMAND) -P CMakeFiles/test_daemon.dir/cmake_clean.cmake
.PHONY : lyslg/CMakeFiles/test_daemon.dir/clean

lyslg/CMakeFiles/test_daemon.dir/depend:
	cd /home/lyslg/Documents/chat_room/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyslg/Documents/chat_room /home/lyslg/Documents/chat_room/lyslg /home/lyslg/Documents/chat_room/build /home/lyslg/Documents/chat_room/build/lyslg /home/lyslg/Documents/chat_room/build/lyslg/CMakeFiles/test_daemon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lyslg/CMakeFiles/test_daemon.dir/depend

