import UIKit
import Foundation

//CompactMap
/*
 Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.
 */

let array = [1,nil, 3,4,nil]

let arrayWithoutNil = array.compactMap({$0})
print(arrayWithoutNil)

let anotherArrayOfArray = [[1,nil,2], [3,4,nil,nil], [5,nil,nil,6,7,nil,8]]
let compactData = anotherArrayOfArray.flatMap{$0.compactMap({$0})}

print(compactData)
