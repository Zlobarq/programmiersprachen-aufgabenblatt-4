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
include source/CMakeFiles/beispiel.dir/depend.make

# Include the progress variables for this target.
include source/CMakeFiles/beispiel.dir/progress.make

# Include the compile flags for this target's objects.
include source/CMakeFiles/beispiel.dir/flags.make

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o: source/CMakeFiles/beispiel.dir/flags.make
source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o: ../source/beispielprogramm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beispiel.dir/beispielprogramm.cpp.o -c /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/beispielprogramm.cpp

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beispiel.dir/beispielprogramm.cpp.i"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/beispielprogramm.cpp > CMakeFiles/beispiel.dir/beispielprogramm.cpp.i

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beispiel.dir/beispielprogramm.cpp.s"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source/beispielprogramm.cpp -o CMakeFiles/beispiel.dir/beispielprogramm.cpp.s

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.requires:

.PHONY : source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.requires

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.provides: source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.requires
	$(MAKE) -f source/CMakeFiles/beispiel.dir/build.make source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.provides.build
.PHONY : source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.provides

source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.provides.build: source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o


# Object files for target beispiel
beispiel_OBJECTS = \
"CMakeFiles/beispiel.dir/beispielprogramm.cpp.o"

# External object files for target beispiel
beispiel_EXTERNAL_OBJECTS =

source/beispiel: source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o
source/beispiel: source/CMakeFiles/beispiel.dir/build.make
source/beispiel: source/CMakeFiles/beispiel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable beispiel"
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/beispiel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/CMakeFiles/beispiel.dir/build: source/beispiel

.PHONY : source/CMakeFiles/beispiel.dir/build

source/CMakeFiles/beispiel.dir/requires: source/CMakeFiles/beispiel.dir/beispielprogramm.cpp.o.requires

.PHONY : source/CMakeFiles/beispiel.dir/requires

source/CMakeFiles/beispiel.dir/clean:
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source && $(CMAKE_COMMAND) -P CMakeFiles/beispiel.dir/cmake_clean.cmake
.PHONY : source/CMakeFiles/beispiel.dir/clean

source/CMakeFiles/beispiel.dir/depend:
	cd /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4 /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/source /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source /home/zlobarq/Documents/CPP/Programmiersprachen/Aufgabe4/programmiersprachen-aufgabenblatt-4/build/source/CMakeFiles/beispiel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/CMakeFiles/beispiel.dir/depend

