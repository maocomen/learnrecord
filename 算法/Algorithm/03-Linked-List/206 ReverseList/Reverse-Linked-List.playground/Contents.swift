// ============================================
// 题目: [反转链表]
// 链接: [https://leetcode.cn/problems/reverse-linked-list/
// 难度: [简单]
// 分类: [链表]
// 解法: [迭代]
// ============================================

import UIKit
import AlgorithmKit

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var pre: ListNode? = nil
        var cur = head
        while cur != nil {
            let next = cur?.next
            cur?.next = pre
            pre = cur
            cur = next
        }
        return pre
    }
}
