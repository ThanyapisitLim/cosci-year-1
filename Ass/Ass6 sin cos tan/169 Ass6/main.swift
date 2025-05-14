//
//  main.swift
//  169 Ass6
//
//  Created by Thanyapisit on 15/2/2568 BE.
//

import Foundation
//var
var radian:Double = 0.0
var sine:Double = 0.0
var cosine:Double = 0.0
var tangent:Double = 0.0
var cotangent:Double = 0.0
var secant:Double = 0.0
var cosecant:Double = 0.0
let pi = 3.14159265

print("---------------------------------------------------------------------------")
print(" DEGREE |   SINE   | COSINE   | TANGENT  | COTANGENT |  SECANT  | COSECANT")
print("---------------------------------------------------------------------------")

for degree in stride(from: 0.1, through: 2.0, by: 0.1) {
    radian = degree * pi / 180.0
    sine = radian
    cosine = 1-((sine*sine)/2)
    tangent = sine
    cotangent = (cosine / sine)
    secant = (1 / cosine)
    cosecant = (1 / sine)
    
    print(String(format: " %6.1f | %8.5f | %8.5f | %8.5f | %9.5f | %8.5f | %9.5f",
                 degree, sine, cosine, tangent, cotangent, secant, cosecant))
}

print("---------------------------------------------------------------------------")
//ธัญพิสิษฐ์ ลิมปกานนท์ 169 ต้าร์
