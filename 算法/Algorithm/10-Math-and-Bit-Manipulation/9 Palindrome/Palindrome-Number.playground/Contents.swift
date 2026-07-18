// ============================================
// 题目: [回文数]
// 链接: [https://leetcode.cn/problems/palindrome-number/]
// 难度: [简单]
// 分类: [数学与位运算]
// 解法: [数学法]
// ============================================

// 反转一半 回文数的后半部分反转后等于前半部分
// 此外还有字符串反转法，字符串双指针，数学法-完全反转，递归法，栈法

import UIKit

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // 特殊情况：
        // 如上所述，当 x < 0 时，x 不是回文数。
        // 同样地，如果数字的最后一位是 0，为了使该数字为回文，
        // 则其第一位数字也应该是 0
        // 只有 0 满足这一属性
        var temp = x
        if temp < 0 || (temp % 10 == 0 && temp != 0) {
            return false
        }
        var revertedNumber = 0
        while temp > revertedNumber {
            revertedNumber = revertedNumber * 10 + temp % 10
            temp /= 10
        }
        // 当数字长度为奇数时，我们可以通过 revertedNumber/10 去除处于中位的数字。
        // 例如，当输入为 12321 时，在 while 循环的末尾我们可以得到 x = 12，revertedNumber = 123，
        // 由于处于中位的数字不影响回文（它总是与自己相等），所以我们可以简单地将其去除。
        return temp == revertedNumber || temp == revertedNumber / 10
    }
}

let solution = Solution()
solution.isPalindrome(121)
