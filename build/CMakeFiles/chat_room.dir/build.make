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
include CMakeFiles/chat_room.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/chat_room.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/chat_room.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chat_room.dir/flags.make

CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o: ../chat/chat_servlet.cc
CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o: CMakeFiles/chat_room.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o -MF CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o.d -o CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o -c /home/lyslg/Documents/chat_room/chat/chat_servlet.cc

CMakeFiles/chat_room.dir/chat/chat_servlet.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/chat_servlet.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/chat/chat_servlet.cc > CMakeFiles/chat_room.dir/chat/chat_servlet.cc.i

CMakeFiles/chat_room.dir/chat/chat_servlet.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/chat_servlet.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/chat_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/chat/chat_servlet.cc -o CMakeFiles/chat_room.dir/chat/chat_servlet.cc.s

CMakeFiles/chat_room.dir/chat/my_module.cc.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/my_module.cc.o: ../chat/my_module.cc
CMakeFiles/chat_room.dir/chat/my_module.cc.o: CMakeFiles/chat_room.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/chat_room.dir/chat/my_module.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chat_room.dir/chat/my_module.cc.o -MF CMakeFiles/chat_room.dir/chat/my_module.cc.o.d -o CMakeFiles/chat_room.dir/chat/my_module.cc.o -c /home/lyslg/Documents/chat_room/chat/my_module.cc

CMakeFiles/chat_room.dir/chat/my_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/my_module.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/chat/my_module.cc > CMakeFiles/chat_room.dir/chat/my_module.cc.i

CMakeFiles/chat_room.dir/chat/my_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/my_module.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/my_module.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/chat/my_module.cc -o CMakeFiles/chat_room.dir/chat/my_module.cc.s

CMakeFiles/chat_room.dir/chat/protocol.cc.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/protocol.cc.o: ../chat/protocol.cc
CMakeFiles/chat_room.dir/chat/protocol.cc.o: CMakeFiles/chat_room.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/chat_room.dir/chat/protocol.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/protocol.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chat_room.dir/chat/protocol.cc.o -MF CMakeFiles/chat_room.dir/chat/protocol.cc.o.d -o CMakeFiles/chat_room.dir/chat/protocol.cc.o -c /home/lyslg/Documents/chat_room/chat/protocol.cc

CMakeFiles/chat_room.dir/chat/protocol.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/protocol.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/protocol.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/chat/protocol.cc > CMakeFiles/chat_room.dir/chat/protocol.cc.i

CMakeFiles/chat_room.dir/chat/protocol.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/protocol.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/protocol.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/chat/protocol.cc -o CMakeFiles/chat_room.dir/chat/protocol.cc.s

CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o: CMakeFiles/chat_room.dir/flags.make
CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o: ../chat/resource_servlet.cc
CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o: CMakeFiles/chat_room.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o -MF CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o.d -o CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o -c /home/lyslg/Documents/chat_room/chat/resource_servlet.cc

CMakeFiles/chat_room.dir/chat/resource_servlet.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_room.dir/chat/resource_servlet.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lyslg/Documents/chat_room/chat/resource_servlet.cc > CMakeFiles/chat_room.dir/chat/resource_servlet.cc.i

CMakeFiles/chat_room.dir/chat/resource_servlet.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_room.dir/chat/resource_servlet.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"chat/resource_servlet.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lyslg/Documents/chat_room/chat/resource_servlet.cc -o CMakeFiles/chat_room.dir/chat/resource_servlet.cc.s

# Object files for target chat_room
chat_room_OBJECTS = \
"CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o" \
"CMakeFiles/chat_room.dir/chat/my_module.cc.o" \
"CMakeFiles/chat_room.dir/chat/protocol.cc.o" \
"CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o"

# External object files for target chat_room
chat_room_EXTERNAL_OBJECTS =

../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/chat_servlet.cc.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/my_module.cc.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/protocol.cc.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/chat/resource_servlet.cc.o
../lib/libchat_room.so: CMakeFiles/chat_room.dir/build.make
../lib/libchat_room.so: CMakeFiles/chat_room.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lyslg/Documents/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library ../lib/libchat_room.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chat_room.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chat_room.dir/build: ../lib/libchat_room.so
.PHONY : CMakeFiles/chat_room.dir/build

CMakeFiles/chat_room.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chat_room.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chat_room.dir/clean

CMakeFiles/chat_room.dir/depend:
	cd /home/lyslg/Documents/chat_room/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lyslg/Documents/chat_room /home/lyslg/Documents/chat_room /home/lyslg/Documents/chat_room/build /home/lyslg/Documents/chat_room/build /home/lyslg/Documents/chat_room/build/CMakeFiles/chat_room.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chat_room.dir/depend

