// This file is created by students of the HPC-Lab at the Norwegian University of Science and Technology (NTNU)
// and is part of the HPC-Lab Snow Simulator application distributed under the GPL license. 
// Copyright (c) 2006-2013 High Performance Lab at the Norwegian University of Science and Technology (NTNU)
// Department of Computer and Information Science (IDI). All rights reserved.
// See the file README.md for more information.

#ifndef CLHELPERS_H
#define CLHELPERS_H

#include <CL/cl.hpp>
#include <GL/glx.h>
#include <GLFW/glfw3.h>

typedef struct CL_GPGPU {
	cl_context context;
	cl_command_queue queue;
	cl_device_id device_id;
} CL_GPGPU;

// Globals....
extern CL_GPGPU GPGPU;

void CL_Init();
void CL_CheckError(cl_int status, const char *message);
cl_program compileCLProgram(const char* program_source);

#endif