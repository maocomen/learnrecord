import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    //迭代法
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
    
    func reverseBetweenRecursive(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if left == 1 {
            return reverseFirstN(head, right)
        }
        head?.next = reverseBetweenRecursive(head?.next, left - 1, right - 1)
        return head
    }
    
}
