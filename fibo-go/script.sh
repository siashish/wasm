#! /usr/bin/bash

echo "#######################################"
echo "#######################################"
date
echo "======================================="
echo "wasmer"
time docker run -it docker.io/library/wasmer-go-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmer-go-fibo
echo "======================================="
echo "wasmtime"
time docker run -it docker.io/library/wasmtime-go-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmtime-go-fibo
echo "======================================="

echo "======================================="
echo "wasmedge"
time docker run -it docker.io/library/wasmedge-go-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmedge-go-fibo
echo "======================================="
echo
echo