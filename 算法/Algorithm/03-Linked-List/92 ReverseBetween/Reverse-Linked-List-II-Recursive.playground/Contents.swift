// ============================================
// 题目: [反转链表II]
// 链接: [https://leetcode.cn/problems/reverse-linked-list-ii]
// 难度: [中等]
// 分类: [链表]
// 解法: [递归]
// ============================================
import UIKit
import AlgorithmKit

class Solution {
    var successor: ListNode? = nil
    
    func reverseFirstN(_ head: ListNode?, _ n: Int) -> ListNode? {
        if n == 1 {
            successor = head?.next
            return head
        }
        let last = reverseFirstN(head?.next, n - 1)
        head?.next?.next = head
        head?.next = successor
        return last
    }
    
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if left == 1 {
            return reverseFirstN(head, right)
        }
        head?.next = reverseBetween(head?.next, left - 1, right - 1)
        return head
    }
}

