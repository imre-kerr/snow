# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/imrefran/code/azmisov-snow/SnowSim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/imrefran/code/azmisov-snow/SnowSim

# Include any dependencies generated for this target.
include glfw-3.1/tests/CMakeFiles/title.dir/depend.make

# Include the progress variables for this target.
include glfw-3.1/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include glfw-3.1/tests/CMakeFiles/title.dir/flags.make

glfw-3.1/tests/CMakeFiles/title.dir/title.c.o: glfw-3.1/tests/CMakeFiles/title.dir/flags.make
glfw-3.1/tests/CMakeFiles/title.dir/title.c.o: glfw-3.1/tests/title.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/imrefran/code/azmisov-snow/SnowSim/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw-3.1/tests/CMakeFiles/title.dir/title.c.o"
	cd /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/title.dir/title.c.o   -c /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests/title.c

glfw-3.1/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests/title.c > CMakeFiles/title.dir/title.c.i

glfw-3.1/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests/title.c -o CMakeFiles/title.dir/title.c.s

glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.requires:
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.requires

glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.provides: glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.requires
	$(MAKE) -f glfw-3.1/tests/CMakeFiles/title.dir/build.make glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.provides.build
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.provides

glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.provides.build: glfw-3.1/tests/CMakeFiles/title.dir/title.c.o

# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.o"

# External object files for target title
title_EXTERNAL_OBJECTS =

title: glfw-3.1/tests/CMakeFiles/title.dir/title.c.o
title: glfw-3.1/tests/CMakeFiles/title.dir/build.make
title: glfw-3.1/src/libglfw3.a
title: /usr/lib/x86_64-linux-gnu/libGLU.so
title: /usr/lib/x86_64-linux-gnu/libX11.so
title: /usr/lib/x86_64-linux-gnu/libXrandr.so
title: /usr/lib/x86_64-linux-gnu/libXinerama.so
title: /usr/lib/x86_64-linux-gnu/libXi.so
title: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
title: /usr/lib/x86_64-linux-gnu/librt.so
title: /usr/lib/x86_64-linux-gnu/libm.so
title: /usr/lib/x86_64-linux-gnu/libXcursor.so
title: /usr/lib/x86_64-linux-gnu/libGL.so
title: glfw-3.1/tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../title"
	cd /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/title.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw-3.1/tests/CMakeFiles/title.dir/build: title
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/build

glfw-3.1/tests/CMakeFiles/title.dir/requires: glfw-3.1/tests/CMakeFiles/title.dir/title.c.o.requires
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/requires

glfw-3.1/tests/CMakeFiles/title.dir/clean:
	cd /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/clean

glfw-3.1/tests/CMakeFiles/title.dir/depend:
	cd /home/imrefran/code/azmisov-snow/SnowSim && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/imrefran/code/azmisov-snow/SnowSim /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests /home/imrefran/code/azmisov-snow/SnowSim /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests /home/imrefran/code/azmisov-snow/SnowSim/glfw-3.1/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw-3.1/tests/CMakeFiles/title.dir/depend

