//
//  main.swift
//  น้ำประปาแบบ Full project
//
//  Created by Thanyapisit on 2/2/2568 BE.
//

import Foundation

print("-- คำนวณค่าน้ำ --")

//Input var
var user_type : Int = 0
var user_unit : Int = 0
//Process var
let vat : Float = 0.07
//Output var
var price : Float = 0
var vat_price : Float = 0
var total_price : Float = 0

//Input
print("กรุณากรอกประเภทของผู้ใช้งาน 1.ที่อยู่อาศัย 2.ราชการและธุรกิจขนาดเล็ก 3.รัฐวิสาหกิจ/อุตสาหกรรม/ธุรกิจขนาดใหญ่")
user_type = Int(readLine() ?? "0") ?? 0
print("กรุณากรอกปริมาณการใช้น้ำ(ลบ.ม./เดือน)")
user_unit = Int(readLine() ?? "0") ?? 0

if user_type == 1 || user_type == 2 || user_type == 3 {
    //Process
    if user_type == 1 {
        if user_unit >= 0 && user_unit <= 10 {
            price = Float(user_unit) * 10.20
        }
        else if user_unit >= 11 && user_unit <= 20 {
            user_unit = user_unit - 10
            price = Float(10) * 10.20 + Float(user_unit) * 16.00
        }
        else if user_unit >= 21 && user_unit <= 30 {
            user_unit = user_unit - 20
            price = Float(10) * 10.20 + Float(10) * 16.00 + Float(user_unit) * 19.00
        }
        else if user_unit >= 31 && user_unit <= 50 {
            user_unit = user_unit - 30
            price = Float(10) * 10.20 + Float(10) * 16.00 + Float(10) * 19.00 + Float(user_unit) * 21.20
        }
        else {
            print("การใช้น้ำประเภทที่ 1 ต้องไม่เกิน 50 unit")
        }
    }
    
    if user_type == 2 {
        if user_unit >= 0 && user_unit <= 10 {
            price = Float(user_unit) * 17.00
        }
        else if user_unit >= 11 && user_unit <= 20 {
            user_unit = user_unit - 10
            price = Float(10) * 17.00 + Float(user_unit) * 20.00
        }
        else if user_unit >= 21 && user_unit <= 30 {
            user_unit = user_unit - 20
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(user_unit) * 21.00
        }
        else if user_unit >= 31 && user_unit <= 50 {
            user_unit = user_unit - 30
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(user_unit) * 22.00
        }
        else if user_unit >= 51 && user_unit <= 80 {
            user_unit = user_unit - 50
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(user_unit) * 23.00
        }
        else if user_unit >= 81 && user_unit <= 100 {
            user_unit = user_unit - 80
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(user_unit) * 24.00
        }
        else if user_unit >= 101 && user_unit <= 300 {
            user_unit = user_unit - 100
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(20) * 24.00 + Float(user_unit) * 27.40
        }
        else if user_unit >= 301 && user_unit <= 1000 {
            user_unit = user_unit - 300
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(20) * 24.00 + Float(200) * 27.40 + Float(user_unit) * 27.50
        }
        else if user_unit >= 1001 && user_unit <= 2000 {
            user_unit = user_unit - 1000
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(20) * 24.00 + Float(200) * 27.40 + Float(700) * 27.50 +  Float(user_unit) * 27.60
        }
        else if user_unit >= 2001 && user_unit <= 3000{
            user_unit = user_unit - 2000
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(20) * 24.00 + Float(200) * 27.40 + Float(700) * 27.50 + Float(1000) * 27.60 + Float(user_unit) * 27.80
        }
        else if user_unit > 3000 {
            user_unit = user_unit - 3000
            price = Float(10) * 17.00 + Float(10) * 20.00 + Float(10) * 21.00 + Float(20) * 22.00 + Float(30) * 23.00 + Float(20) * 24.00 + Float(200) * 27.40 + Float(700) * 27.50 + Float(1000) * 27.60 + Float(1000) * 27.80 + Float(user_unit) * 28.00
        }
    }
    
    if user_type == 3 {
        if user_unit >= 0 && user_unit <= 10 {
            price = Float(user_unit) * 18.25
        }
        else if user_unit >= 11 && user_unit <= 20 {
            user_unit = user_unit - 10
            price = Float(10) * 18.25 + Float(user_unit) * 21.50
        }
        else if user_unit >= 21 && user_unit <= 30 {
            user_unit = user_unit - 20
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(user_unit) * 25.50
        }
        else if user_unit >= 31 && user_unit <= 50 {
            user_unit = user_unit - 30
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(user_unit) * 28.50
        }
        else if user_unit >= 51 && user_unit <= 80 {
            user_unit = user_unit - 50
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(user_unit) * 31.00
        }
        else if user_unit >= 81 && user_unit <= 100 {
            user_unit = user_unit - 80
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(user_unit) * 31.25
        }
        else if user_unit >= 101 && user_unit <= 300 {
            user_unit = user_unit - 100
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(20) * 31.25 + Float(user_unit) * 31.50
        }
        else if user_unit >= 301 && user_unit <= 1000 {
            user_unit = user_unit - 300
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(20) * 31.25 + Float(200) * 31.50 + Float(user_unit) * 31.75
        }
        else if user_unit >= 1001 && user_unit <= 2000 {
            user_unit = user_unit - 1000
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(20) * 31.25 + Float(200) * 31.50 + Float(700) * 31.75 +  Float(user_unit) * 32.00
        }
        else if user_unit >= 2001 && user_unit <= 3000{
            user_unit = user_unit - 2000
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(20) * 31.25 + Float(200) * 31.50 + Float(700) * 31.75 + Float(1000) * 32.00 + Float(user_unit) * 32.25
        }
        else if user_unit > 3000 {
            user_unit = user_unit - 3000
            price = Float(10) * 18.25 + Float(10) * 21.50 + Float(10) * 25.50 + Float(20) * 28.50 + Float(30) * 31.00 + Float(20) * 31.25 + Float(200) * 31.50 + Float(700) * 31.75 + Float(1000) * 32.00 + Float(1000) * 32.25 + Float(user_unit) * 32.50
        }
    }
    //Calculate
    vat_price = price * vat
    total_price = price + vat_price
    //Output
    print("ราคา vat : \(vat_price) บาท")
    print("ราคาค่าน้ำที่ต้องชำระเป็น \(total_price) บาท")
}
else {
    print("กรุณากรอกประเภทผู้ใช้งานเป็นตัวเลข 1 / 2 / 3")
}
