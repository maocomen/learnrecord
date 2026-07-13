//
//  File.swift
//  AlgorithmKit
//
//  Created by apple on 2026/7/14.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        var values: [Int] = []
        var current: ListNode? = self
        while let node = current {
            values.append(node.val)
            current = node.next
        }
        return values.map(String.init).joined(separator: " -> ")
    }
}
