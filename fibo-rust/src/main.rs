fn main() {
    println!("{}", fibo(47));
}

fn fibo(n: u32)->u32{
    if n < 2 {
        1
    } else {
        fibo(n-1)+fibo(n-2)
    }
}
