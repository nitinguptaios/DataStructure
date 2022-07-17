//
//  ViewController.swift
//  DataStructureInSwift
//
//  Created by Nitin Gupta on 15/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        callingStackOpearations()
        callingQueueUsingArrayOpearations()
    }

    func callingStackOpearations(){
        var stack = Stack<String>()
        stack.push(element: "Manas")
        stack.push(element: "Vivek")
        stack.push(element: "Rahul")
        stack.push(element: "Shyam")
        stack.push(element: "Geeta")
        stack.push(element: "Prerna")
        guard let topElement = stack.top else {
            return
        }
        print("top Element is: \(topElement)")
        stack.push(element: "Ankur")
        stack.push(element: "Radha")
        guard let popedElement = stack.pop() else {
            return
        }
        print("Poped Element is: \(popedElement)")
        
        print(stack)
    }
    
    func callingQueueUsingArrayOpearations() {
        var queue = QueueUsingArray<String>()
        queue.enqueue("Manas")
        queue.enqueue("Vivek")
        queue.enqueue("Rahul")
        queue.enqueue("Shyam")
        guard let dequeue1 = queue.dequeue() else {
            return
        }
        print("Poped Element is: \(dequeue1)")
        queue.enqueue("Geeta")
        queue.enqueue("Prerna")
        
        guard let front = queue.front else {
            return
        }
        print("top Element is: \(front)")
        guard let rear = queue.rear else {
            return
        }
        print("top Element is: \(rear)")
        
        queue.enqueue("Radha")
        queue.enqueue("Ankur")
        
        guard let dequeue = queue.dequeue() else {
            return
        }
        print("Poped Element is: \(dequeue)")
        
        print(queue)
    }
}

