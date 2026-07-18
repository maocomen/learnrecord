import UIKit

// 最大子数据和
// 贪心 动态规划(DP) 分治法
// 题目
// 给你一个整数数组 nums ，请你找出一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和
// 贪心/DP 时间复杂度O(n)
// 分治法 时间复杂度O()

class Solution {
    // 贪心/DP
    func maxSubArray(_ nums: [Int]) -> Int {
        var pre = 0 // 以当前位置为结尾的最大子数组和
        var res = nums.first! // 全局最大和
        for num in nums {
            // 算出每一步的子数组和
            // 要么接上面的，要么从当前重新开始
            // 没有当前的大，那么从当前开始，如果比当前的大就继续下一次计算
            pre = max(pre + num, num)
            //全局最大和
            res = max(res, pre)
        }
        return res
    }
    
    // 分治法
    func maxSubArrayDivide(_ nums: [Int]) -> Int {
        func divide(_ l: Int, _ r: Int) -> Int {
            if l == r { return nums[l] }
            let mid = (l + r) / 2
            
            let leftSum = divide(l, mid)
            let rightSum = divide(mid + 1, r)
            let crossSum = crossMaxSum(l, mid, r)
            
            return max(leftSum, crossSum, rightSum)
        }
        
        func crossMaxSum(_ l: Int, _ mid: Int, _ r: Int) -> Int {
            var leftSum = Int.min
            var sum = 0
            for i in (l...mid).reversed() {
                sum += nums[i]
                leftSum = max(leftSum, sum)
            }
            var rightSum = Int.min
            sum = 0
            for i in (mid + 1)...r {
                sum += nums[i]
                rightSum = max(rightSum, sum)
            }
            return leftSum + rightSum
        }
        return divide(0, nums.count - 1)
    }
    
}

let sol = Solution()
let result = sol.maxSubArrayDivide([-2, 1, -3, 4, -1, 2, 1, -5, 4])
