#! /usr/bin/bash

echo "#######################################"
echo "#######################################"
echo "#######################################"
echo "#######################################"
echo "#######################################"
echo "#######################################"
date
echo "***************************************"
echo "Running under docker"
echo "***************************************"
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
echo "***************************************"
echo "Running over local machine"
echo "***************************************"
tinygo build -o fibo.wasm -target wasi ./main.go
date
echo "======================================="
echo "wasmer"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmer fibo.wasm 
echo "======================================="
echo "wasmtime"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmtime fibo.wasm 
echo "======================================="

wasmedgec fibo.wasm fibo-compiled.wasm
echo "======================================="
echo "wasmedge"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmedge fibo-compiled.wasm
echo "======================================="
echo
echo