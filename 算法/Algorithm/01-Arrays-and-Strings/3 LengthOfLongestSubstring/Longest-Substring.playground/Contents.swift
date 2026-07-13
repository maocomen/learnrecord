import UIKit

//1
func lengthOfLongestSubstring(_ s: String) -> Int {
    var map: [String.Element: Int] = [:]
    var start = 0
    var length = 0
    for (index, value) in s.enumerated() {
        if let cacheVal = map[value] {
            start = max(start, cacheVal)
        }
        let end = index + 1
        length = max(length, end - start)
        map[value] = end
    }
    return length
}

//2
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var map: [String.Element: Int] = [:]
//    var start = 0
//    var end = 0
//    var length = 0
//    for value in s {
//        if let cacheVal = map[value] {
//            start = max(start, cacheVal)
//        }
//        end += 1
//        length = max(length, end - start)
//        map[value] = end
//    }
//    return length
//}


//3
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var map: [String.Element: Int] = [:]
//    var start = 0
//    var length = 0
//    var ans = 1
//    for (end, value) in s.enumerated() {
//        if let cacheVal = map[value] {
//            start = max(start, cacheVal)
//            ans = 0
//        }
//        length = max(length, end - start + ans)
//        map[value] = end
//    }
//    return length
//}

lengthOfLongestSubstring("akkkabcd")
