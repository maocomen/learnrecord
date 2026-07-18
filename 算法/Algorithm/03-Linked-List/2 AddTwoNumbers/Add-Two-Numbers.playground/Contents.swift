// ============================================
// 题目: [两数相加]
// 链接: [https://leetcode.cn/problems/add-two-numbers/]
// 难度: [中等]
// 分类: [链表]
// ============================================

import UIKit
import AlgorithmKit

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        let node: ListNode = ListNode(0)
        var current = node
        var carry: Int = 0
        while node1 != nil || node2 != nil {
            let x = node1?.val ?? 0
            let y = node2?.val ?? 0
            let sum = carry + x + y
            carry = sum / 10
            current.next = ListNode(sum % 10)
            current = current.next!
            if node1 != nil { node1 = node1!.next }
            if node2 != nil { node2 = node2!.next}
        }
        if carry > 0 {
            current.next = ListNode(carry)
        }
        return node.next
    }
}

let node1 = LinkedListUtils.build([2, 4, 3])
let node2 = LinkedListUtils.build([5, 6, 4, 3])

let sol = Solution()

let node = sol.addTwoNumbers(node1, node2)
var tempNode = node
while let temp = tempNode {
    print(temp.val)
    tempNode = tempNode?.next
}

