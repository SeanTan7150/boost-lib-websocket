# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tanxiuhaw/boost_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tanxiuhaw/boost_tutorial

# Include any dependencies generated for this target.
include WSCHATServer/CMakeFiles/WSCHATServer.dir/depend.make

# Include the progress variables for this target.
include WSCHATServer/CMakeFiles/WSCHATServer.dir/progress.make

# Include the compile flags for this target's objects.
include WSCHATServer/CMakeFiles/WSCHATServer.dir/flags.make

WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.o: WSCHATServer/CMakeFiles/WSCHATServer.dir/flags.make
WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.o: WSCHATServer/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanxiuhaw/boost_tutorial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.o"
	cd /home/tanxiuhaw/boost_tutorial/WSCHATServer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WSCHATServer.dir/main.cpp.o -c /home/tanxiuhaw/boost_tutorial/WSCHATServer/main.cpp

WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WSCHATServer.dir/main.cpp.i"
	cd /home/tanxiuhaw/boost_tutorial/WSCHATServer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanxiuhaw/boost_tutorial/WSCHATServer/main.cpp > CMakeFiles/WSCHATServer.dir/main.cpp.i

WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WSCHATServer.dir/main.cpp.s"
	cd /home/tanxiuhaw/boost_tutorial/WSCHATServer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanxiuhaw/boost_tutorial/WSCHATServer/main.cpp -o CMakeFiles/WSCHATServer.dir/main.cpp.s

# Object files for target WSCHATServer
WSCHATServer_OBJECTS = \
"CMakeFiles/WSCHATServer.dir/main.cpp.o"

# External object files for target WSCHATServer
WSCHATServer_EXTERNAL_OBJECTS =

WSCHATServer/WSCHATServer: WSCHATServer/CMakeFiles/WSCHATServer.dir/main.cpp.o
WSCHATServer/WSCHATServer: WSCHATServer/CMakeFiles/WSCHATServer.dir/build.make
WSCHATServer/WSCHATServer: WSCHATNetwork/libWSCHATNetwork.a
WSCHATServer/WSCHATServer: WSCHATServer/CMakeFiles/WSCHATServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tanxiuhaw/boost_tutorial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable WSCHATServer"
	cd /home/tanxiuhaw/boost_tutorial/WSCHATServer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WSCHATServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
WSCHATServer/CMakeFiles/WSCHATServer.dir/build: WSCHATServer/WSCHATServer

.PHONY : WSCHATServer/CMakeFiles/WSCHATServer.dir/build

WSCHATServer/CMakeFiles/WSCHATServer.dir/clean:
	cd /home/tanxiuhaw/boost_tutorial/WSCHATServer && $(CMAKE_COMMAND) -P CMakeFiles/WSCHATServer.dir/cmake_clean.cmake
.PHONY : WSCHATServer/CMakeFiles/WSCHATServer.dir/clean

WSCHATServer/CMakeFiles/WSCHATServer.dir/depend:
	cd /home/tanxiuhaw/boost_tutorial && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tanxiuhaw/boost_tutorial /home/tanxiuhaw/boost_tutorial/WSCHATServer /home/tanxiuhaw/boost_tutorial /home/tanxiuhaw/boost_tutorial/WSCHATServer /home/tanxiuhaw/boost_tutorial/WSCHATServer/CMakeFiles/WSCHATServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : WSCHATServer/CMakeFiles/WSCHATServer.dir/depend
