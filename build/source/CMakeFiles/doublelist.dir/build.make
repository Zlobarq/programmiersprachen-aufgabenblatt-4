# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_SOURCE_DIR = /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build

# Include any dependencies generated for this target.
include source/CMakeFiles/doublelist.dir/depend.make

# Include the progress variables for this target.
include source/CMakeFiles/doublelist.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/doublelist.dir/flags.make

source/CMakeFiles/doublelist.dir/list.cpp.o: source/CMakeFiles/doublelist.dir/flags.make
source/CMakeFiles/doublelist.dir/list.cpp.o: ../source/list.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/CMakeFiles/doublelist.dir/list.cpp.o"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/doublelist.dir/list.cpp.o -c /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/list.cpp

source/CMakeFiles/doublelist.dir/list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/doublelist.dir/list.cpp.i"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/list.cpp > CMakeFiles/doublelist.dir/list.cpp.i

source/CMakeFiles/doublelist.dir/list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/doublelist.dir/list.cpp.s"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/list.cpp -o CMakeFiles/doublelist.dir/list.cpp.s

source/CMakeFiles/doublelist.dir/list.cpp.o.requires:

.PHONY : source/CMakeFiles/doublelist.dir/list.cpp.o.requires

source/CMakeFiles/doublelist.dir/list.cpp.o.provides: source/CMakeFiles/doublelist.dir/list.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/doublelist.dir/build.make source/CMakeFiles/doublelist.dir/list.cpp.o.provides.build
.PHONY : source/CMakeFiles/doublelist.dir/list.cpp.o.provides

source/CMakeFiles/doublelist.dir/list.cpp.o.provides.build: source/CMakeFiles/doublelist.dir/list.cpp.o


# Object files for target doublelist
doublelist_OBJECTS = \
"CMakeFiles/doublelist.dir/list.cpp.o"

# External object files for target doublelist
doublelist_EXTERNAL_OBJECTS =

source/doublelist: source/CMakeFiles/doublelist.dir/list.cpp.o
source/doublelist: source/CMakeFiles/doublelist.dir/build.make
source/doublelist: source/CMakeFiles/doublelist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable doublelist"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/doublelist.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/doublelist.dir/build: source/doublelist

.PHONY : source/CMakeFiles/doublelist.dir/build

source/CMakeFiles/doublelist.dir/requires: source/CMakeFiles/doublelist.dir/list.cpp.o.requires

.PHONY : source/CMakeFiles/doublelist.dir/requires

source/CMakeFiles/doublelist.dir/clean:
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && $(CMAKE_COMMAND) -P CMakeFiles/doublelist.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/doublelist.dir/clean

source/CMakeFiles/doublelist.dir/depend:
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4 /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source/CMakeFiles/doublelist.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/doublelist.dir/depend
