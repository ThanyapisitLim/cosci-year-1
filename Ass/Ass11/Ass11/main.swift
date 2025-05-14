//
//  main.swift
//  Ass11
//
//  Created by Thanyapisit on 1/3/2568 BE.
//

import Foundation
var a = 0
var b = 0
for x in 1...100 {
    for y in 10...150 {
        for z in 0...50 {
            if (5*x)-(10*y)+(2*z) == 40 {
                print("x : \(x), y : \(y), z : \(z)")
                a += 1
                if x % 2 == 0 && y % 2 == 0 && z % 2 == 0 {
                    b += 1
                }
            }
        }
    }
}

print("สมการที่เป็นไปได้",a)
print("สมการเลขคู่ทั้งหมดมี",b)
