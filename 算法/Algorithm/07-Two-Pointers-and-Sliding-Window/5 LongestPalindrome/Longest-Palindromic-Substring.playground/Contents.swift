import Foundation

//func longestPalindrome(_ s: String) -> String {
//    if s.count < 2 {
//        return s
//    }
//}
//
//let result = longestPalindrome("a")

let string: String = "aavb==ddddd"
let array = string[string.startIndex..<string.index(string.startIndex, offsetBy: 3)]
print(array)
