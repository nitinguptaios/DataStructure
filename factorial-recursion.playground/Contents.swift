import UIKit


func factorial(number :Int) -> Int {
    
    // base case
    if number == 0 {
        return 1
    }
    
    // recursive case 
    return number * factorial(number: number - 1)
    
}

let result = factorial(number: 6)
print(result)
