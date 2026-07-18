import UIKit

func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 {
        return s
    }
    
    var rows: [String] = Array(repeating: "", count: min(numRows, s.count))
    var curRow = 0
    var goingdown = false
    for character in s {
        rows[curRow].append(character)
        if curRow == 0 || curRow == numRows - 1 {
            goingdown = !goingdown
        }
        curRow += goingdown ? 1 : -1
    }
    var results = ""
    for string in rows {
        results += string
    }
    return results
}

let string = convert("1234567890", 3)
print(string)
