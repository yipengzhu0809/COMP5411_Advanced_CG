# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build

# Include any dependencies generated for this target.
include CMakeFiles/COMP5411.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/COMP5411.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/COMP5411.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/COMP5411.dir/flags.make

CMakeFiles/COMP5411.dir/src/main.cpp.o: CMakeFiles/COMP5411.dir/flags.make
CMakeFiles/COMP5411.dir/src/main.cpp.o: /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/main.cpp
CMakeFiles/COMP5411.dir/src/main.cpp.o: CMakeFiles/COMP5411.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/COMP5411.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/COMP5411.dir/src/main.cpp.o -MF CMakeFiles/COMP5411.dir/src/main.cpp.o.d -o CMakeFiles/COMP5411.dir/src/main.cpp.o -c /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/main.cpp

CMakeFiles/COMP5411.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/COMP5411.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/main.cpp > CMakeFiles/COMP5411.dir/src/main.cpp.i

CMakeFiles/COMP5411.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/COMP5411.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/main.cpp -o CMakeFiles/COMP5411.dir/src/main.cpp.s

CMakeFiles/COMP5411.dir/src/deformer.cpp.o: CMakeFiles/COMP5411.dir/flags.make
CMakeFiles/COMP5411.dir/src/deformer.cpp.o: /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/deformer.cpp
CMakeFiles/COMP5411.dir/src/deformer.cpp.o: CMakeFiles/COMP5411.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/COMP5411.dir/src/deformer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/COMP5411.dir/src/deformer.cpp.o -MF CMakeFiles/COMP5411.dir/src/deformer.cpp.o.d -o CMakeFiles/COMP5411.dir/src/deformer.cpp.o -c /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/deformer.cpp

CMakeFiles/COMP5411.dir/src/deformer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/COMP5411.dir/src/deformer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/deformer.cpp > CMakeFiles/COMP5411.dir/src/deformer.cpp.i

CMakeFiles/COMP5411.dir/src/deformer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/COMP5411.dir/src/deformer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/deformer.cpp -o CMakeFiles/COMP5411.dir/src/deformer.cpp.s

CMakeFiles/COMP5411.dir/src/glcamera.cpp.o: CMakeFiles/COMP5411.dir/flags.make
CMakeFiles/COMP5411.dir/src/glcamera.cpp.o: /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/glcamera.cpp
CMakeFiles/COMP5411.dir/src/glcamera.cpp.o: CMakeFiles/COMP5411.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/COMP5411.dir/src/glcamera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/COMP5411.dir/src/glcamera.cpp.o -MF CMakeFiles/COMP5411.dir/src/glcamera.cpp.o.d -o CMakeFiles/COMP5411.dir/src/glcamera.cpp.o -c /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/glcamera.cpp

CMakeFiles/COMP5411.dir/src/glcamera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/COMP5411.dir/src/glcamera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/glcamera.cpp > CMakeFiles/COMP5411.dir/src/glcamera.cpp.i

CMakeFiles/COMP5411.dir/src/glcamera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/COMP5411.dir/src/glcamera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/glcamera.cpp -o CMakeFiles/COMP5411.dir/src/glcamera.cpp.s

CMakeFiles/COMP5411.dir/src/mesh.cpp.o: CMakeFiles/COMP5411.dir/flags.make
CMakeFiles/COMP5411.dir/src/mesh.cpp.o: /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/mesh.cpp
CMakeFiles/COMP5411.dir/src/mesh.cpp.o: CMakeFiles/COMP5411.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/COMP5411.dir/src/mesh.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/COMP5411.dir/src/mesh.cpp.o -MF CMakeFiles/COMP5411.dir/src/mesh.cpp.o.d -o CMakeFiles/COMP5411.dir/src/mesh.cpp.o -c /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/mesh.cpp

CMakeFiles/COMP5411.dir/src/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/COMP5411.dir/src/mesh.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/mesh.cpp > CMakeFiles/COMP5411.dir/src/mesh.cpp.i

CMakeFiles/COMP5411.dir/src/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/COMP5411.dir/src/mesh.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/mesh.cpp -o CMakeFiles/COMP5411.dir/src/mesh.cpp.s

CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o: CMakeFiles/COMP5411.dir/flags.make
CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o: /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/viewer3d.cpp
CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o: CMakeFiles/COMP5411.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o -MF CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o.d -o CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o -c /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/viewer3d.cpp

CMakeFiles/COMP5411.dir/src/viewer3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/COMP5411.dir/src/viewer3d.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/viewer3d.cpp > CMakeFiles/COMP5411.dir/src/viewer3d.cpp.i

CMakeFiles/COMP5411.dir/src/viewer3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/COMP5411.dir/src/viewer3d.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/src/viewer3d.cpp -o CMakeFiles/COMP5411.dir/src/viewer3d.cpp.s

# Object files for target COMP5411
COMP5411_OBJECTS = \
"CMakeFiles/COMP5411.dir/src/main.cpp.o" \
"CMakeFiles/COMP5411.dir/src/deformer.cpp.o" \
"CMakeFiles/COMP5411.dir/src/glcamera.cpp.o" \
"CMakeFiles/COMP5411.dir/src/mesh.cpp.o" \
"CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o"

# External object files for target COMP5411
COMP5411_EXTERNAL_OBJECTS =

COMP5411: CMakeFiles/COMP5411.dir/src/main.cpp.o
COMP5411: CMakeFiles/COMP5411.dir/src/deformer.cpp.o
COMP5411: CMakeFiles/COMP5411.dir/src/glcamera.cpp.o
COMP5411: CMakeFiles/COMP5411.dir/src/mesh.cpp.o
COMP5411: CMakeFiles/COMP5411.dir/src/viewer3d.cpp.o
COMP5411: CMakeFiles/COMP5411.dir/build.make
COMP5411: libnanogui.dylib
COMP5411: CMakeFiles/COMP5411.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable COMP5411"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/COMP5411.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/COMP5411.dir/build: COMP5411
.PHONY : CMakeFiles/COMP5411.dir/build

CMakeFiles/COMP5411.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/COMP5411.dir/cmake_clean.cmake
.PHONY : CMakeFiles/COMP5411.dir/clean

CMakeFiles/COMP5411.dir/depend:
	cd /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build /Users/eason/Desktop/HKUST/git/COMP5411_Advanced_CG/build/CMakeFiles/COMP5411.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/COMP5411.dir/depend

