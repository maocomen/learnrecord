public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init() { self.val = 0; self.next = nil; }
   public init(_ val: Int) { self.val = val; self.next = nil; }
   public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
class Solution {
    //    //迭代写法
    //    func reverseList(_ head: ListNode?) -> ListNode? {
    //        var pre: ListNode? = nil
    //        var cur = head
    //        while cur != nil {
    //            let next = cur?.next
    //            cur?.next = pre
    //            pre = cur
    //            cur = next
    //        }
    //        return pre
    //    }
    //递归写法
    //1 2 3 4 5
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil, head?.next != nil else { return head }
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newHead
    }
}
