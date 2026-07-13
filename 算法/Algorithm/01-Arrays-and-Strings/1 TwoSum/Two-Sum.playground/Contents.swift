import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    if nums.count < 2 {
        return []
    }
    var map: [Int: Int] = [:]
    for (index, value) in nums.enumerated() {
        let num = target - value
        if let rIndex = map[num] {
            return [rIndex, index]
        }
        map[value] = index
    }
    return []
}

twoSum([8, 4, 1, 3], 9)
