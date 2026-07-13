//
//  File.swift
//  AlgorithmKit
//
//  Created by apple on 2026/7/14.
//

import Foundation

public enum LinkedListUtils {
    public static func build(_ array: [Int]) -> ListNode? {
        guard !array.isEmpty else { return nil }
        let dummy = ListNode(0)
        var current = dummy
        for val in array {
            current.next = ListNode(val)
            current = current.next!
        }
        return dummy.next
    }
    
    public static func isEqual(_ l1: ListNode?, _ l2: ListNode?) -> Bool {
        var p1 = l1, p2 = l2
        while p1 != nil && p2 != nil {
            if p1!.val != p2!.val { return false }
            p1 = p1!.next
            p2 = p2!.next
        }
        return p1 == nil && p2 == nil
    }
}
