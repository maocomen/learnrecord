import UIKit

// 二分查找
// 题目
// 在升序数组中查找目标值，返回下标，不存在返回 -1
// 左闭右闭 左闭右开关键区别就是 mid的计算差异 7 / 3 = 2, 6 / 3 = 2



// 左闭右闭
func search1(_ nums: [Int], _ target: Int) -> Int {
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
    return -1
}
// 左闭右开
func search2(_ nums: [Int], _ target: Int) -> Int {
    var l = 0, r = nums.count
    while l < r {
        let mid = l + (r - l) / 2
        let val = nums[mid]
        if val == target {
            return mid
        }
        if val < target {
            l = mid + 1
        } else {
            r = mid
        }
    }
    return -1
}


let result = search2([1, 2, 3, 4], 9)
