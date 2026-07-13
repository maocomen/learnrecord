import UIKit

class Solution {
    func myAtoi(_ s: String) -> Int {
        var automation = Automation()
        for string in s {
            automation.puchElement(c: string)
        }
        return automation.sign * automation.ans
    }
}

struct Automation {
    var sign = 1
    var ans: Int = 0
    var state = "start"
    var table = [
        "start" : ["start", "signed", "in_number", "end"],
        "signed" : ["end", "end", "in_number", "end"],
        "in_number" : ["end", "end", "in_number", "end"],
        "end" : ["end", "end", "end", "end"]
    ]
    
    mutating func puchElement(c: String.Element) {
        let index = get_col(c: c)
        state = table[state]![index]
        if state == "in_number" {
            ans = ans * 10 + Int(c.asciiValue!) - Int(Character("0").asciiValue!)
            ans = sign == 1 ? Int(min(ans, Int(Int32.max))) : min(ans, -(Int(Int32.min)))
        } else if state == "signed" {
            sign = c == "+" ? 1 : -1
        }
    }
    
    func get_col(c: String.Element) -> Int {
        switch c {
        case " ":
            return 0
            
        case "+", "-":
            return 1
            
        case let s where s.isNumber:
            return 2
            
        default:
            return 3
        }
    }
}



let solution = Solution()
solution.myAtoi("-91283472332")
