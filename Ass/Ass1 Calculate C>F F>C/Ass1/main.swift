import Foundation

print("กรุณาเลือก 1 หรือ 2:")
var option = Int(readLine()!)!

if option == 1 {
    print("กรุณากรอกอุณหภูมิในหน่วย Celsius : ")
    let c = Float(readLine()!)!
    let fahrenheit = c * (9/5) + 32
    print("อุณหภูมิในหน่วย Fahrenheit : \(fahrenheit)")
} else if option == 2 {
    print("กรุณากรอกอุณหภูมิในหน่วย Fahrenheit : ")
    let f = Float(readLine()!)!
    let celsius = (f - 32) * 5 / 9
    print("อุณหภูมิในหน่วย Celsius : \(celsius)")
} else {
    print("กรุณาเลือกแค่ 1 หรือ 2")
}

// ธัญพิสิษฐ์ ลิมปกานนท์ 169 ต้าร์
