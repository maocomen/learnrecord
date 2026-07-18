// ============================================
// 题目: [反转链表]
// 链接: [https://leetcode.cn/problems/reverse-linked-list/
// 难度: [简单]
// 分类: [链表]
// 解法: [递归]
// ============================================

import UIKit
import AlgorithmKit

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil, head?.next != nil else { return head }
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
}
