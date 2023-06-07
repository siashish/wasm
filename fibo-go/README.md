for building the docker with wasmer
``` docker build -t wasmer-go-fibo -f Dockerfile-wasmer .```

for running the docker image with wasmer
```docker run -it docker.io/library/wasmer-go-fibo```

for building the docker with wasmedge
``` docker build -t wasmedge-go-fibo -f Dockerfile-wasmedge .```

for running the docker image with wasmedge
```docker run -it docker.io/library/wasmedge-go-fibo```

for building the docker with wasmtime
``` docker build -t wasmtime-go-fibo -f Dockerfile-wasmtime .```

for running the docker image with wasmtime
```docker run -it docker.io/library/wasmetime-go-fibo```





for compling the code 
```tinygo build -o fibo.wasm -target wasi ./main.go```

for running, make sure all the runtime install in your system

```wasmer fibo.wasm``` or ```wasmer run fibo.wasm```

```wasmtime fibo.wasm``` or ```wasmtime run fibo.wasm```

for optimzing the code
```wasmedgec fibo.wasm fibo-compiled.wasm```
```wasmedge fibo-compiled.wasm```