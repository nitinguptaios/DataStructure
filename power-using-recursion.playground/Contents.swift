import UIKit


//2^3 = 2 * 2 * 2 = 8
/*
    Stack
    2 * 4 = 8

 */

func power(number :Int, n :Int) -> Int {
    
    // base case
    if n == 0 {
        return 1
    } else {
        return number * power(number: number, n: n - 1)
    }
}

print(power(number: 2, n: 3))
