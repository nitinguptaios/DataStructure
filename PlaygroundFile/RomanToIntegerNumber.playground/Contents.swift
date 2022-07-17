import UIKit
import Foundation

enum Roman: String {
    case I
    case V
    case X
    case L
    case C
    case D
    case M
    
    var num: Int {
        switch self {
        case .I:
            return 1
        case .V:
            return 5
        case .X:
            return 10
        case .L:
            return 50
        case .C:
            return 100
        case .D:
            return 500
        case .M:
            return 1000
        }
    }
}

func romanToInt(_ s: String) -> Int {
    var pre = Roman(rawValue: String(s.first!))!.num
   return s.dropFirst().reduce(pre){ (r, current) in
        let num = Roman(rawValue: String(current))!.num
        var result = r
        if pre < num {
            result += num - 2 * pre
        }
        else{
            result += num
        }
        pre = num
        return result
    }
}
    
    print(romanToInt("MCDXLII"))
    
Int(log10(Double(750)))

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}
 2^^3
