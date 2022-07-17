import UIKit
import Foundation

//Filter
//Use filter to loop over a collection and return an Array containing only those elements that match an include condition.

//filter on array
let arrayOfIntegers = [1,2,3,4,5,6,7,8,9]

let newArray = arrayOfIntegers.filter( { $0 % 2 == 0 } )
print(newArray)

//filter on dictionary
let bookAmount = ["harryPorter": 100.9, "jungleBook": 120.4, "book1": 103.9, "book2": 130.4]

let filteredBook = bookAmount.filter({$1 > 110.0})
print(filteredBook)
//$0 is the key, $1 is the value

//filter on set
let lengthInMeter: Set = [102.3, 120.4, 823.3, 747.4, 464.1]

let lengthInFeet = lengthInMeter.filter({
    $0 > 500.0
})
