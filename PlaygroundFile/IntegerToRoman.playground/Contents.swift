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

func convertIntegerToRoman(number: Int){
    while number != 0{
        
    }
}
