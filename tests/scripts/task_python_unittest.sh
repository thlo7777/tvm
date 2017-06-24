#!/bin/bash

export PYTHONPATH=python:topi/python

TVM_FFI=ctypes python -m nose -v tests/python/unittest || exit -1
TVM_FFI=ctypes python3 -m nose -v tests/python/unittest || exit -1
make cython || exit -1
make cython3 || exit -1
TVM_FFI=cython python -m nose -v tests/python/unittest || exit -1
TVM_FFI=cython python3 -m nose -v tests/python/unittest || exit -1
