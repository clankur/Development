# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /home/ankur/Development/cv/coins

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ankur/Development/cv/coins

# Include any dependencies generated for this target.
include CMakeFiles/CountCoins.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CountCoins.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CountCoins.dir/flags.make

CMakeFiles/CountCoins.dir/CountCoins.cpp.o: CMakeFiles/CountCoins.dir/flags.make
CMakeFiles/CountCoins.dir/CountCoins.cpp.o: CountCoins.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ankur/Development/cv/coins/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CountCoins.dir/CountCoins.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CountCoins.dir/CountCoins.cpp.o -c /home/ankur/Development/cv/coins/CountCoins.cpp

CMakeFiles/CountCoins.dir/CountCoins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CountCoins.dir/CountCoins.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ankur/Development/cv/coins/CountCoins.cpp > CMakeFiles/CountCoins.dir/CountCoins.cpp.i

CMakeFiles/CountCoins.dir/CountCoins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CountCoins.dir/CountCoins.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ankur/Development/cv/coins/CountCoins.cpp -o CMakeFiles/CountCoins.dir/CountCoins.cpp.s

CMakeFiles/CountCoins.dir/CountCoins.cpp.o.requires:

.PHONY : CMakeFiles/CountCoins.dir/CountCoins.cpp.o.requires

CMakeFiles/CountCoins.dir/CountCoins.cpp.o.provides: CMakeFiles/CountCoins.dir/CountCoins.cpp.o.requires
	$(MAKE) -f CMakeFiles/CountCoins.dir/build.make CMakeFiles/CountCoins.dir/CountCoins.cpp.o.provides.build
.PHONY : CMakeFiles/CountCoins.dir/CountCoins.cpp.o.provides

CMakeFiles/CountCoins.dir/CountCoins.cpp.o.provides.build: CMakeFiles/CountCoins.dir/CountCoins.cpp.o


# Object files for target CountCoins
CountCoins_OBJECTS = \
"CMakeFiles/CountCoins.dir/CountCoins.cpp.o"

# External object files for target CountCoins
CountCoins_EXTERNAL_OBJECTS =

CountCoins: CMakeFiles/CountCoins.dir/CountCoins.cpp.o
CountCoins: CMakeFiles/CountCoins.dir/build.make
CountCoins: /usr/local/lib/libopencv_stitching.so.3.4.0
CountCoins: /usr/local/lib/libopencv_superres.so.3.4.0
CountCoins: /usr/local/lib/libopencv_videostab.so.3.4.0
CountCoins: /usr/local/lib/libopencv_aruco.so.3.4.0
CountCoins: /usr/local/lib/libopencv_bgsegm.so.3.4.0
CountCoins: /usr/local/lib/libopencv_bioinspired.so.3.4.0
CountCoins: /usr/local/lib/libopencv_ccalib.so.3.4.0
CountCoins: /usr/local/lib/libopencv_dnn_objdetect.so.3.4.0
CountCoins: /usr/local/lib/libopencv_dpm.so.3.4.0
CountCoins: /usr/local/lib/libopencv_face.so.3.4.0
CountCoins: /usr/local/lib/libopencv_freetype.so.3.4.0
CountCoins: /usr/local/lib/libopencv_fuzzy.so.3.4.0
CountCoins: /usr/local/lib/libopencv_img_hash.so.3.4.0
CountCoins: /usr/local/lib/libopencv_line_descriptor.so.3.4.0
CountCoins: /usr/local/lib/libopencv_optflow.so.3.4.0
CountCoins: /usr/local/lib/libopencv_reg.so.3.4.0
CountCoins: /usr/local/lib/libopencv_rgbd.so.3.4.0
CountCoins: /usr/local/lib/libopencv_saliency.so.3.4.0
CountCoins: /usr/local/lib/libopencv_stereo.so.3.4.0
CountCoins: /usr/local/lib/libopencv_structured_light.so.3.4.0
CountCoins: /usr/local/lib/libopencv_surface_matching.so.3.4.0
CountCoins: /usr/local/lib/libopencv_tracking.so.3.4.0
CountCoins: /usr/local/lib/libopencv_xfeatures2d.so.3.4.0
CountCoins: /usr/local/lib/libopencv_ximgproc.so.3.4.0
CountCoins: /usr/local/lib/libopencv_xobjdetect.so.3.4.0
CountCoins: /usr/local/lib/libopencv_xphoto.so.3.4.0
CountCoins: /usr/local/lib/libopencv_shape.so.3.4.0
CountCoins: /usr/local/lib/libopencv_photo.so.3.4.0
CountCoins: /usr/local/lib/libopencv_datasets.so.3.4.0
CountCoins: /usr/local/lib/libopencv_plot.so.3.4.0
CountCoins: /usr/local/lib/libopencv_text.so.3.4.0
CountCoins: /usr/local/lib/libopencv_dnn.so.3.4.0
CountCoins: /usr/local/lib/libopencv_ml.so.3.4.0
CountCoins: /usr/local/lib/libopencv_video.so.3.4.0
CountCoins: /usr/local/lib/libopencv_calib3d.so.3.4.0
CountCoins: /usr/local/lib/libopencv_features2d.so.3.4.0
CountCoins: /usr/local/lib/libopencv_highgui.so.3.4.0
CountCoins: /usr/local/lib/libopencv_videoio.so.3.4.0
CountCoins: /usr/local/lib/libopencv_phase_unwrapping.so.3.4.0
CountCoins: /usr/local/lib/libopencv_flann.so.3.4.0
CountCoins: /usr/local/lib/libopencv_imgcodecs.so.3.4.0
CountCoins: /usr/local/lib/libopencv_objdetect.so.3.4.0
CountCoins: /usr/local/lib/libopencv_imgproc.so.3.4.0
CountCoins: /usr/local/lib/libopencv_core.so.3.4.0
CountCoins: CMakeFiles/CountCoins.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ankur/Development/cv/coins/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CountCoins"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CountCoins.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CountCoins.dir/build: CountCoins

.PHONY : CMakeFiles/CountCoins.dir/build

CMakeFiles/CountCoins.dir/requires: CMakeFiles/CountCoins.dir/CountCoins.cpp.o.requires

.PHONY : CMakeFiles/CountCoins.dir/requires

CMakeFiles/CountCoins.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CountCoins.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CountCoins.dir/clean

CMakeFiles/CountCoins.dir/depend:
	cd /home/ankur/Development/cv/coins && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ankur/Development/cv/coins /home/ankur/Development/cv/coins /home/ankur/Development/cv/coins /home/ankur/Development/cv/coins /home/ankur/Development/cv/coins/CMakeFiles/CountCoins.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CountCoins.dir/depend
