# Introduction
“VVdeC2_ARM_Neon” is a SIMD Neon-based VVC decoder implementation. It is an ARM-based configured version of Fraunhofer Versatile Video Decoder (VVdeC) version 0.2.0.0. VVdec has been configured for a heterogeneous NVIDIA Xavier System on Chip embedded platform based on ARM + GPUs. Here, VVdeC has also been configured for CUDA compatibility with GPUs. Moreover, SIMD Neon-based optimization has been performed by adapting the original SIMD instructions with the Neon intrinsics for ARM processors over the embedded platform.
 
# Hardware
The following architectures are supported:
- Aarch64
- ARMv8
- ARMv7

# How to build?
Cmake is used to build the software over Linux (gcc). 

_Create a build directory in the root directory:_
```sh
mkdir build
```
_Change to build directory:_

```sh
cd build
```

_Therefore, use one of the following cmake commands that suited to you. 
Linux Release Makefile sample:_

```sh
cmake .. -DCMAKE_BUILD_TYPE=Release
```

_Linux Debug Makefile sample:_

```sh
cmake .. -DCMAKE_BUILD_TYPE=Debug
```

 
_Then build using plain make_
```sh
make
```

# Adoptions
The following open source projects have been adopted during the development of VVdeC2_ARM_Neon. 

- Vvdec-0.2.0.0 : https://github.com/fraunhoferhhi/vvdec/releases/tag/v0.2.0.0 -provides a fast VVC x86 software decoder implementation.
- SIMD Everywhere simde: https://github.com/simd-everywhere/simde -provides fast, portable implementations of SIMD intrinsics SSE functions on ARM.
- sse2neon: https://github.com/DLTcollab/sse2neon -provides translation of Intel SSE (Streaming SIMD Extensions) intrinsics to Arm NEON.


