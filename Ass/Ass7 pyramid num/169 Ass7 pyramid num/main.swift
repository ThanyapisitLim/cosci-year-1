//
//  main.swift
//  169 Ass7 pyramid num
//
//  Created by Thanyapisit on 14/2/2568 BE.
//

import Foundation

print(" -- Pyramid Number -- ")

for i in 1..<10 {
    let space = String(repeating: " ", count: 10 - i)
    var num:String = ""
    for j in 1...i {
        num += String(j)
    }
    for d in stride(from: i-1, through: 1, by: -1) {
        num += String(d)
    }
    print(space+num)
}
//ธัญพิสิษฐ์ ลิมปกานนท์ ต้าร์ 169
