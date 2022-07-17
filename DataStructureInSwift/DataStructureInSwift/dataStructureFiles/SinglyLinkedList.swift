//
//  SinglyLinkedList.swift
//  DataStructureInSwift
//
//  Created by Nitin Gupta on 15/06/22.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node<T>?
    
    public init(value: T) {
        self.value = value
        self.next = nil
    }
}


class SinglyListList<T> {
    var head:Node<T>? = nil
    var count:Int = 0
    
//    init(first: Node<T>) {
//        self.head = first
//    }

    //isempty
    public var isEmpty: Bool {
        return head == nil
    }
    
    //first element
    public var firstElement:Node<T>? {
        return head
    }
    
    //last element
    public var lastElement:Node<T>? {
        guard var node = head else{
            return nil
        }
        while let next = node.next {
            node = next
        }
        
        return node
    }
    
    //size
    public var size:Int {
        guard var node = head else {
            return 0
        }
        var count = 0
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
   
    //insert first
    public func insertAtFirst(_ element: T) {
        let newNode = Node(value: element)
        if var head = firstElement {
            newNode.next = head
            head = newNode
        }
    }
    
    //insert last
    public func insertAtLast(_ element: T) {
        let newNode = Node(value: element)
        if var last = lastElement {
            last.next = newNode
            last = newNode
            newNode.next = nil
        }
    }
    
    //insert at position
    public func insertAtPosition(_ element: T, position: Int) {
        let newNode = Node(value: element)
        guard var head = firstElement else {
            return
        }
        for i in stride(from: 0, to: position - 1, by: 1) {
            if head.next != nil{
                head = head.next!
            }
        }
        newNode.next = head.next
        head.next = newNode
    }
    
    //removeFirst
    public func removeAtFirst() -> Node<T>? {
        guard var head = head else {
            return nil
        }
        let tempNode = head
        if head.next != nil{
            head = head.next!
        }
        return tempNode
    }
    
    //removeLast
    public func removeAtLast() -> Node<T>? {
        guard var head = head else {
            return nil
        }
        let tempNode = head
        if head.next != nil{
            head = head.next!
        }
        return tempNode
    }
    //removeAtMiddle
    //peek
}

