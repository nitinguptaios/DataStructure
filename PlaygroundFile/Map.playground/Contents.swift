import Foundation

//Map
//use map to loop over a collection and apply same operation to each element in the  collection.


//map on array
let arrayOfInt = [2,3,4,5,4,7,2]

let newArray = arrayOfInt.map({$0 * 10})
print(newArray)

//map on dictionary
let bookAmount = ["book1": 100.0, "book2": 200.0]
let increasePriceofBooks = bookAmount.map({
    (key, value) in
    return [key.capitalized: value + 10]
})
print(increasePriceofBooks)

//map on set
let distanceInMeter: Set = [120.0, 154.2, 132.3, 165.5]

let distanceINFeet = distanceInMeter.map({
    meter in
    return meter * 3.2808
})
print(distanceINFeet)

//to know index of a map
let number = [1,2,4,6,3]

let indexAndValue = number.enumerated().map({
    (index, value) in
    return "\(index):\(value)"
})
