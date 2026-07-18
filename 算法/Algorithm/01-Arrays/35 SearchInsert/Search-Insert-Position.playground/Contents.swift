import UIKit

// 二分查找
// 题目
// 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
// 时间复杂度为 O(log n)

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        while l <= r {
            let mid = l + (r - l) / 2
            let val = nums[mid]
            if val == target {
                return mid
            }
            if val < target {
                l = mid + 1
            } else {
                r = mid - 1
            }
            
        }
        return l
    }
}

let sol = Solution()
let result = sol.searchInsert([1, 3, 5, 6], 7)
