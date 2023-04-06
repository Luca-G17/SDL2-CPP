# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles /home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/lucag/Documents/HomeStuff/c++/sdltest/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SDL2Test

# Build rule for target.
SDL2Test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SDL2Test
.PHONY : SDL2Test

# fast build rule for target.
SDL2Test/fast:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/build
.PHONY : SDL2Test/fast

Main.o: Main.cpp.o

.PHONY : Main.o

# target to build an object file
Main.cpp.o:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/Main.cpp.o
.PHONY : Main.cpp.o

Main.i: Main.cpp.i

.PHONY : Main.i

# target to preprocess a source file
Main.cpp.i:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/Main.cpp.i
.PHONY : Main.cpp.i

Main.s: Main.cpp.s

.PHONY : Main.s

# target to generate assembly for a file
Main.cpp.s:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/Main.cpp.s
.PHONY : Main.cpp.s

MainWindow.o: MainWindow.cpp.o

.PHONY : MainWindow.o

# target to build an object file
MainWindow.cpp.o:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/MainWindow.cpp.o
.PHONY : MainWindow.cpp.o

MainWindow.i: MainWindow.cpp.i

.PHONY : MainWindow.i

# target to preprocess a source file
MainWindow.cpp.i:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/MainWindow.cpp.i
.PHONY : MainWindow.cpp.i

MainWindow.s: MainWindow.cpp.s

.PHONY : MainWindow.s

# target to generate assembly for a file
MainWindow.cpp.s:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/MainWindow.cpp.s
.PHONY : MainWindow.cpp.s

PhysicsObject.o: PhysicsObject.cpp.o

.PHONY : PhysicsObject.o

# target to build an object file
PhysicsObject.cpp.o:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.o
.PHONY : PhysicsObject.cpp.o

PhysicsObject.i: PhysicsObject.cpp.i

.PHONY : PhysicsObject.i

# target to preprocess a source file
PhysicsObject.cpp.i:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.i
.PHONY : PhysicsObject.cpp.i

PhysicsObject.s: PhysicsObject.cpp.s

.PHONY : PhysicsObject.s

# target to generate assembly for a file
PhysicsObject.cpp.s:
	$(MAKE) -f CMakeFiles/SDL2Test.dir/build.make CMakeFiles/SDL2Test.dir/PhysicsObject.cpp.s
.PHONY : PhysicsObject.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... SDL2Test"
	@echo "... Main.o"
	@echo "... Main.i"
	@echo "... Main.s"
	@echo "... MainWindow.o"
	@echo "... MainWindow.i"
	@echo "... MainWindow.s"
	@echo "... PhysicsObject.o"
	@echo "... PhysicsObject.i"
	@echo "... PhysicsObject.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

