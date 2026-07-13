//: A UIKit based Playground for presenting user interface
  
import UIKit

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

let result = reverse(2147483647)
print(result)
