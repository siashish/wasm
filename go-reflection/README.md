for compling the code 
```tinygo build -o go-reflection.wasm -target wasi ./main.go```

for running, make sure all the runtime install in your system

```wasmer go-reflection.wasm``` or ```wasmer run go-reflection.wasm```

```wasmtime go-reflection.wasm``` or ```wasmtime run go-reflection.wasm```

```wasmedge go-reflection.wasm```