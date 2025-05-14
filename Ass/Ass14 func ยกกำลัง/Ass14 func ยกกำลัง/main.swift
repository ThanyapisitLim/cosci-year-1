import Foundation

var num: Int = 0
var rest: Int = 0
print("กรอกตัวฐาน : ",terminator: "")
num = Int(readLine() ?? "0") ?? 0
print("กรอกค่ายกกำลัง : ",terminator: "")
rest = Int(readLine() ?? "0") ?? 0
var result = 1

func restFunc(num:Int,rest:Int) {
    if rest > 0 {
        result *= num
        restFunc(num: num, rest: rest-1)
    }
}

restFunc(num:num,rest:rest)
print(result)
