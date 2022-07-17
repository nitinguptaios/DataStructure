import UIKit

//FlatMap
/*
 Flatmap is used to flatten a collection of collections . But before flattening the collection, we can apply map to each elements.
 */

let codes = [["a","b","c","d"], ["e","f","g","h","i"], ["j","k","l","m","n","o"]]
let newCode = codes.flatMap({$0.map {$0.uppercased()}})
print(newCode)

//chaining method

let arrayOfArrays = [[1,2,3,4], [5,6,7,8,9]]
let sumOfSquaresOfEvenNumbers = arrayOfArrays.flatMap{$0}.filter{$0 % 2 == 0}.map {$0 * $0}.reduce(0, +)
print(sumOfSquaresOfEvenNumbers)
