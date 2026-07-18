// ============================================
// 题目: [反转链表II]
// 链接: [https://leetcode.cn/problems/reverse-linked-list-ii]
// 难度: [中等]
// 分类: [链表]
// 解法: [迭代]
// ============================================

import UIKit
import AlgorithmKit

class Solution {
    
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        let dummy = ListNode(-1)
        dummy.next = head
        
        var pre: ListNode? = dummy
        for _ in 0..<left-1 {
            pre = pre?.next
        }
        
        let cur = pre?.next
        for _ in 0..<right - left {
            let next = cur?.next
            cur?.next = next?.next
            next?.next = pre?.next
            pre?.next = next
        }
        
        return dummy.next
    }
}

