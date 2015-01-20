// This file is created by students of the HPC-Lab at the Norwegian University of Science and Technology (NTNU)
// and is part of the HPC-Lab Snow Simulator application distributed under the GPL license. 
// Copyright (c) 2006-2013 High Performance Lab at the Norwegian University of Science and Technology (NTNU)
// Department of Computer and Information Science (IDI). All rights reserved.
// See the file README.md for more information.

#include <stdio.h>
#include "CLHelpers.h"


CL_GPGPU GPGPU;

void CL_Init() {
	cl_int status;
	
	cl_uint numPlatforms;
	status = clGetPlatformIDs(0, NULL, &numPlatforms);
	CL_CheckError(status, "number of platforms");

	cl_platform_id platformIDs[numPlatforms];
	status = clGetPlatformIDs(numPlatforms, platformIDs, NULL);
	CL_CheckError(status, "get platform IDs");

	cl_platform_id cpuPlatformID, gpuPlatformID;
	cl_device_id cpuDeviceID, gpuDeviceID;
	int isCPU = 0, isGPU = 0;

	// iterate over platforms and then devices, picking the first CPU and GPU device we find
	for (size_t i = 0; i < numPlatforms; i++) {
		cl_uint numDevices;
		status = clGetDeviceIDs(platformIDs[i], CL_DEVICE_TYPE_ALL, 0, NULL, &numDevices);
		if (CL_SUCCESS == status) {
			cl_device_id deviceIDs[numDevices];
			status = clGetDeviceIDs(platformIDs[i], CL_DEVICE_TYPE_ALL, numDevices, deviceIDs, NULL);
			if (CL_SUCCESS == status) {
				for (size_t j = 0; j < numDevices; j++)
				{
					cl_device_type deviceType;
					status = clGetDeviceInfo(deviceIDs[j], CL_DEVICE_TYPE, sizeof(cl_device_type), &deviceType, NULL);
					if (CL_SUCCESS == status) {
						if (!isCPU && (CL_DEVICE_TYPE_CPU & deviceType)) {
							isCPU = 1;
							cpuPlatformID = platformIDs[i];
							cpuDeviceID = deviceIDs[j];
						}
						if (!isGPU && (CL_DEVICE_TYPE_GPU & deviceType)) {
							isGPU = 1;
							gpuPlatformID = platformIDs[i];
							gpuDeviceID = deviceIDs[j];
						}
					}
				}
			}
		}
	}

	cl_platform_id platformID;
	cl_device_id deviceID;
	if (isGPU) {
		platformID = gpuPlatformID;
		deviceID = gpuDeviceID;
	}
	else if (isCPU) {
		platformID = cpuPlatformID;
		deviceID = cpuDeviceID;
	}
	else {
		CL_CheckError(CL_DEVICE_NOT_FOUND, "no devices found");
	}
	GPGPU.device_id = deviceID;

	cl_context_properties props[] = {CL_CONTEXT_PLATFORM, 
									(cl_context_properties) platformID,
									CL_GL_CONTEXT_KHR,
									(intptr_t) glXGetCurrentContext(),
									CL_GLX_DISPLAY_KHR,
									(intptr_t)glXGetCurrentDisplay(),
									0
	};
	cl_context context = clCreateContext(props, 1, &deviceID, NULL, NULL, &status);
	GPGPU.context = context;
	CL_CheckError(status, "create context");

	cl_command_queue queue = clCreateCommandQueue(context, deviceID, 0, &status);
	GPGPU.queue = queue;
	CL_CheckError(status, "create command queue");

	// Check for available OpenCL extensions
	size_t buf_len;
	status = clGetPlatformInfo(platformID, CL_PLATFORM_EXTENSIONS, 0, NULL, &buf_len);
	char *buf = (char *)malloc(buf_len);
	status = clGetPlatformInfo(platformID, CL_PLATFORM_EXTENSIONS, buf_len, buf, NULL);
	// Do stuff with this information here, if you want.
	free(buf);

	//TODO: buffers?, programs, kernels
	//Make a struct with everything the other functions need?
}

void CL_CheckError(cl_int status, const char *message) {
	if (CL_SUCCESS != status) {
		fprintf(stderr, "error: %s (error %d)\n", message, status);
		exit(-1);
	}
}

cl_program compileCLProgram(const char* program_source){
    int err;
    cl_program program = clCreateProgramWithSource(GPGPU.context, 1, (const char **) & program_source, NULL, &err);

    CL_CheckError(err, "Program creation error");
    // Build the program executable
    //
    err = clBuildProgram(program, 0, NULL, "-Werror", NULL, NULL);
    if (err != CL_SUCCESS)
    {
        size_t len;
        char buffer[2048];

        printf("Error: Failed to build program executable! (error %d)\n", err);
        clGetProgramBuildInfo(program, GPGPU.device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &len);
        printf("%s .\n", buffer);
        exit(1);
    }
    return program;
}