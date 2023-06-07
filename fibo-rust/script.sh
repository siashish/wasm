#! /usr/bin/bash

echo "#######################################"
echo "#######################################"
date
echo "======================================="
echo "wasmer"
time docker run -it docker.io/library/wasmer-rust-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmer-rust-fibo
echo "======================================="
echo "wasmtime"
time docker run -it docker.io/library/wasmtime-rust-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmtime-rust-fibo

echo "======================================="
echo "wasmedge"
time docker run -it docker.io/library/wasmedge-rust-fibo
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" docker run -it docker.io/library/wasmedge-rust-fibo
echo "======================================="
echo
echo