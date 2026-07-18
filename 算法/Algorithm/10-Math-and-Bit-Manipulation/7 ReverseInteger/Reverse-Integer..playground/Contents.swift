// ============================================
// 题目: [整数反转]
// 链接: [https://leetcode.cn/problems/reverse-integer/]
// 难度: [中等]
// 分类: [数学与位运算]
// 解法: [数学法]
// ============================================

//还有字符串反转法、数组/栈法，递归法，位运算法，64位作弊法

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var temp = x
        var rev = 0
        while temp != 0 {
            if rev < Int32.min / 10 || rev > Int32.max / 10 {
                return 0
            }
            let digit = temp % 10
            temp /= 10
            rev = rev * 10 + digit
        }
        return rev
    }
}

let sol = Solution()
sol.reverse(2147483647)
sol.reverse(123)
