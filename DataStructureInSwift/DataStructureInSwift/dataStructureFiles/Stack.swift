//
//  Stack.swift
//  DataStructureInSwift
//
//  Created by Nitin Gupta on 15/06/22.
//

import Foundation

struct Stack<T> {
    fileprivate var array = [T]()
    
    //push
    mutating func push(element: T) {
        array.append(element)
    }
    
    //pop
    mutating func pop() -> T? {
        if !isEmpty{
            return array.removeLast()
        }
        return nil
    }
    //isEmpty
    var isEmpty:Bool {
        return array.isEmpty
    }
    
    //Top
    var top:T?{
        guard let topElement = array.last else {
            print("stack is empty")
            return nil
        }
        return topElement
    }
    
}
