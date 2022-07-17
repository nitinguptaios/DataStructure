//
//  Queue.swift
//  DataStructureInSwift
//
//  Created by Nitin Gupta on 15/06/22.
//

import Foundation

struct QueueUsingArray<T> {
    //queue using array
    fileprivate var array = [T]()
    
    //front
    var front:T? {
        guard let first = array.first else{
            return nil
        }
        return first
    }
    
    //rear
    var rear:T? {
        guard let last = array.last else{
            return nil
        }
        return last
    }
    
    //push
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    //pop
    mutating func dequeue() -> T? {
        guard let front = array.first, let rear = array.last else{
            return nil
        }
        return array.removeFirst()
        
    }
    //isEmpty
    var isEmpty:Bool {
        return  array.isEmpty
    }
    
}
