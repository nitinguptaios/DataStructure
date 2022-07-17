import UIKit

//Reduce
/*Use reduce to combine all items in a collection to create a single new value.
func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result
So, the reduce function takes two arguments.

One is an initial value which is used to store the initial value or the value or result returned by the closure from each iteration.
The other one is a closure which takes two arguments, one is the initial value or the result from the previous execution of the closure and the other one is the next item in the collection. */


//reduce on array
let numbers = [1,2,3,4]
let sum = 0
numbers.reduce(sum, { x, y in
    x + y
})

//OR
let reduceNumberSum = numbers.reduce(1) { $0 * $1 }
print(reduceNumberSum)

let codes = ["abc","def","ghi"]
let text = codes.reduce("") { $0 + $1} //the result is "abcdefghi"
//or
let text1 = codes.reduce("", + ) //the result is "abcdefghi"

//reduce on dictionary
let bookAmount = ["harrypotter" :100.0, "junglebook" :1000.0]
let reducedBookNamesOnDict = bookAmount.reduce("Books are ") { $0 + $1.key + " " } //or $0 + $1.0 + “”
print(reducedBookNamesOnDict)
