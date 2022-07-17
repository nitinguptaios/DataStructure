import UIKit


class BinaryNode<Element> {
    
    var value :Element
    var leftChild :BinaryNode?
    var rightChild :BinaryNode?
    
    init(_ value :Element) {
        self.value = value
    }
    
}

/*
   10
 /    \
 9     2
/ \     / \
1  3   4  6
 

 Stack:
 
 
 
 
 
 
 
 Print:
 1 9 3 10 4 2 6
 
 */

extension BinaryNode {
    
    func traverseInOrder(visit :(Element) -> Void) {
        
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
        
    }
    
}



let ten = BinaryNode(10)
let nine = BinaryNode(9)
let two = BinaryNode(2)
let one = BinaryNode(1)
let three = BinaryNode(3)
let four = BinaryNode(4)
let six = BinaryNode(6)

ten.leftChild = nine
ten.rightChild = two
nine.leftChild = one
nine.rightChild = three
two.leftChild = four
two.rightChild = six

ten.traverseInOrder {
    print($0)
}






