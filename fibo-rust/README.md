for building the docker with wasmer
``` docker build -t wasmer-rust-fibo -f Dockerfile-wasmer .```

for running the docker image with wasmer
```docker run -it docker.io/library/wasmer-rust-fibo```

for building the docker with wasmedge
``` docker build -t wasmedge-rust-fibo -f Dockerfile-wasmedge .```

for running the docker image with wasmedge
```docker run -it docker.io/library/wasmedge-rust-fibo```

for building the docker with wasmtime
``` docker build -t wasmtime-rust-fibo -f Dockerfile-wasmtime .```

for running the docker image with wasmtime
```docker run -it docker.io/library/wasmetime-rust-fibo```