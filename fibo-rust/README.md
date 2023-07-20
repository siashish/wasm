make the script excute permission 
```sudo chmod +x script.sh```

for running the script(this script assume that you already build the image by given below command)

```./script.sh &>> wasmLog-rust-docker.txt ```

you can see the log in wasmLog.log file at the EOF.

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
```docker run -it docker.io/library/wasmtime-rust-fibo```