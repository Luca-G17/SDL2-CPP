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
CMAKE_SOURCE_DIR = /home/lucag/Documents/HomeStuff/c++/sdltest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lucag/Documents/HomeStuff/c++/sdltest

# Include any dependencies generated for this target.
include CMakeFiles/SDL2Test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SDL2Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SDL2Test.dir/flags.make

CMakeFiles/SDL2Test.dir/Main.cpp.o: CMakeFiles/SDL2Test.dir/flags.make
CMakeFiles/SDL2Test.dir/Main.cpp.o: Main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SDL2Test.dir/Main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SDL2Test.dir/Main.cpp.o -c /home/lucag/Documents/HomeStuff/c++/sdltest/Main.cpp

CMakeFiles/SDL2Test.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SDL2Test.dir/Main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lucag/Documents/HomeStuff/c++/sdltest/Main.cpp > CMakeFiles/SDL2Test.dir/Main.cpp.i

CMakeFiles/SDL2Test.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SDL2Test.dir/Main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lucag/Documents/HomeStuff/c++/sdltest/Main.cpp -o CMakeFiles/SDL2Test.dir/Main.cpp.s

CMakeFiles/SDL2Test.dir/MainWindow.cpp.o: CMakeFiles/SDL2Test.dir/flags.make
CMakeFiles/SDL2Test.dir/MainWindow.cpp.o: MainWindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SDL2Test.dir/MainWindow.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SDL2Test.dir/MainWindow.cpp.o -c /home/lucag/Documents/HomeStuff/c++/sdltest/MainWindow.cpp

CMakeFiles/SDL2Test.dir/MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SDL2Test.dir/MainWindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lucag/Documents/HomeStuff/c++/sdltest/MainWindow.cpp > CMakeFiles/SDL2Test.dir/MainWindow.cpp.i

CMakeFiles/SDL2Test.dir/MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SDL2Test.dir/MainWindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lucag/Documents/HomeStuff/c++/sdltest/MainWindow.cpp -o CMakeFiles/SDL2Test.dir/MainWindow.cpp.s

CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o: CMakeFiles/SDL2Test.dir/flags.make
CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o: PhysicsObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o -c /home/lucag/Documents/HomeStuff/c++/sdltest/PhysicsObject.cpp

CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lucag/Documents/HomeStuff/c++/sdltest/PhysicsObject.cpp > CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.i

CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lucag/Documents/HomeStuff/c++/sdltest/PhysicsObject.cpp -o CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.s

# Object files for target SDL2Test
SDL2Test_OBJECTS = \
"CMakeFiles/SDL2Test.dir/Main.cpp.o" \
"CMakeFiles/SDL2Test.dir/MainWindow.cpp.o" \
"CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o"

# External object files for target SDL2Test
SDL2Test_EXTERNAL_OBJECTS =

SDL2Test: CMakeFiles/SDL2Test.dir/Main.cpp.o
SDL2Test: CMakeFiles/SDL2Test.dir/MainWindow.cpp.o
SDL2Test: CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o
SDL2Test: CMakeFiles/SDL2Test.dir/build.make
SDL2Test: /usr/lib/x86_64-linux-gnu/libSDL2main.a
SDL2Test: /usr/lib/x86_64-linux-gnu/libSDL2.so
SDL2Test: /usr/lib/x86_64-linux-gnu/libSDL2_ttf.so
SDL2Test: /usr/lib/x86_64-linux-gnu/libSDL2.so
SDL2Test: CMakeFiles/SDL2Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable SDL2Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDL2Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SDL2Test.dir/build: SDL2Test

.PHONY : CMakeFiles/SDL2Test.dir/build

CMakeFiles/SDL2Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SDL2Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SDL2Test.dir/clean

CMakeFiles/SDL2Test.dir/depend:
	cd /home/lucag/Documents/HomeStuff/c++/sdltest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lucag/Documents/HomeStuff/c++/sdltest /home/lucag/Documents/HomeStuff/c++/sdltest /home/lucag/Documents/HomeStuff/c++/sdltest /home/lucag/Documents/HomeStuff/c++/sdltest /home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles/SDL2Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SDL2Test.dir/depend

