//
//  MiddleOfTheLinkedList.swift
//  
//  Given the head of a singly linked list, return the middle node of the linked list.
//
//  If there are two middle nodes, return the second middle node.
//
//  Input: head = [1,2,3,4,5]
//  Output: [3,4,5]
//  Explanation: The middle node of the list is node 3.

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var found = [ListNode?]()
        var node = head

        while node != nil {
            found.append(node)
            node = node?.next
        }

        return found[found.count / 2]
    }

    func middleNodeAnotherWay(_ head: ListNode?) -> ListNode? {
        var end = head
        var middle = head

        while end?.next != nil {
            middle = middle?.next
            end = end?.next?.next
        }

        return middle
    }
}
