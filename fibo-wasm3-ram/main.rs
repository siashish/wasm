fn fibonacci(n: u32) -> u64 {
    let mut fib: (u64, u64) = (0, 1);

    for _ in 0..n {
        fib = (fib.1, fib.0 + fib.1);
    }

    fib.0
}

fn main() {
    let n = 47;
    let result = fibonacci(n);
    println!("Fibonacci({}) = {}", n, result);
}
