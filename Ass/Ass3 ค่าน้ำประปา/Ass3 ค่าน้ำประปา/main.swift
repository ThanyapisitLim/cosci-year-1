//
//  main.swift
//  Ass3 ค่าน้ำประปา
//
//  Created by Thanyapisit on 31/1/2568 BE.
//

import Foundation

print("--ประปา Calculator")
//Input var
var user_meter : Int = 0
var unit : Int = 0
//Process var
let vat : Float = 0.07
var price_per_unit : Float = 0
//Output var
var price : Float = 0
var vat_price : Float = 0
var total_price : Float = 0

//Input
print("กรุณากรอกเลขมิเตอร์ของคุณ : ")
user_meter = Int(readLine() ?? "0") ?? 0
print("กรุณากรอกยูนิตที่ใช้ : ")
unit = Int(readLine() ?? "0") ?? 0

//Process
if unit > 0 {
    if unit >= 0 && unit <= 10 {
        price_per_unit = 10.20
    }
    else if unit >= 11 && unit <= 20 {
        price_per_unit = 16.00
    }
    else if unit >= 21 && unit <= 30 {
        price_per_unit = 19.00
    }
    else if unit >= 31 && unit <= 50 {
        price_per_unit = 21.20
    }
    else if unit >= 51 && unit <= 80 {
        price_per_unit = 23.00
    }
    else if unit >= 81 && unit <= 100 {
        price_per_unit = 24.00
    }
    else if unit >= 101 && unit <= 300 {
        price_per_unit = 27.40
    }
    else if unit >= 301 && unit <= 1000 {
        price_per_unit = 27.50
    }
    else if unit >= 1001 && unit <= 2000{
        price_per_unit = 27.60
    }
    else if unit >= 2001 && unit <= 3000{
        price_per_unit = 27.80
    }
    else {
        price_per_unit = 28.00
    }
    
    //Calculate
    price = price_per_unit * Float(unit)
    vat_price = price * vat
    total_price = price + vat_price
    
    //Output
    print("ราคา : \(price)")
    print("vat 7% : \(vat_price)")
    print("ราคาที่ต้องชำระ : \(total_price)")
}

else {
    print("กรุณากรอกเลขยูนิตที่ใช้ให้ถูกต้อง")
}

// 169 ธัญพิสิษฐ์ ลิมปกานนท์ (ต้าร์)
