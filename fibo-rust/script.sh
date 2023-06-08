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
echo "***************************************"
echo "Running over local machine"
echo "***************************************"
cargo build --release
cargo build --release --target wasm32-wasi
date
echo "======================================="
echo "wasmer"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmer target/wasm32-wasi/release/fibo-rust.wasm 
echo "======================================="
echo "wasmtime"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmtime target/wasm32-wasi/release/fibo-rust.wasm 
echo "======================================="

wasmedgec target/wasm32-wasi/release/fibo.wasm fibo.wasm
echo "======================================="
echo "wasmedge"
\time -f "Program: %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCPU: %P\nMemory: %K\nRSS: %M" wasmedge fibo-rust.wasm 
echo "======================================="
echo
echo