echo "#############################################################"
cargo build --target wasm32-wasi
date
echo "================================================================="

/usr/bin/time -f "Program %C\nTotal time: %E\nUser Mode (s) %U\nKernel Mode (s) %S\nCpu: %P\nMemory: %K\nRss: %M" wasm3 target/wasm32-wasi/debug/helloram.wasm

echo "#############################################################" >> log.txt
