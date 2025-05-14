//
//  main.swift
//  Ass8 basenum 10 > 2
//
//  Created by Thanyapisit on 22/2/2568 BE.
//

import Foundation

var base10:Int = 0
var base2:String = ""

print("Enter number base 10 -> 2 : ",terminator: "")
base10 = Int(readLine() ?? "0") ?? 0

while base10 > 0 {
    if base10%2 == 0 {
        base2 = "0" + base2
        base10 = base10/2
    }
    else {
        base2 = "1" + base2
        base10 = base10/2
    }
}
print("Base 2 : ", base2)
//169 ธัญพิสิษฐ์ ต้าร์
