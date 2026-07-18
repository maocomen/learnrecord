// ============================================
// 题目: [正则表达式匹配]
// 链接: [https://leetcode.cn/problems/regular-expression-matching/]
// 难度: [困难]
// 分类: [数组]
// ============================================

import UIKit
import AlgorithmKit

class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        // 边界情况处理
        if p == "" || p == "." || p == "*" {
            return true
        }
        let sChars = Array(s)
        let pChars = Array(p)
        let sLen = sChars.count
        let pLen = pChars.count
        
        var dp = Array(repeating: Array(repeating: false, count: pLen + 1), count: sLen + 1)
        dp[0][0] = true
        // 坐标转化
        for j in 2 ..< pLen + 1 {
            if pChars[j - 1] == "*" {
                dp[0][j] = dp[0][j - 2]
            }
        }
        for i in 1 ..< sLen + 1 {
            for j in 1 ... pLen {
                let sc = sChars[i - 1]
                let pc = pChars[j - 1]
                
                if pc == "." || pc == sc {
                    dp[i][j] = dp[i - 1][j - 1]
                } else if pc == "*" {
                    let prePC = pChars[j - 2]
                    
                    dp[i][j] = dp[i][j - 2]
                    if prePC == "." || prePC == sc {
                        dp[i][j] = dp[i][j] || dp[i - 1][j]
                    }
                }
            }
        }
        
        return dp[sLen][pLen]
    }
}


let sol = Solution()
print(sol.isMatch("aa", "a"))          // false
print(sol.isMatch("aa", "a*"))         // true
print(sol.isMatch("ab", ".*"))         // true
print(sol.isMatch("aab", "c*a*b"))      // true
print(sol.isMatch("mississippi", "mis*is*p*.")) // false
print(sol.isMatch("", "a*"))           // true
