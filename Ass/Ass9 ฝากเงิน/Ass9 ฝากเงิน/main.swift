//
//  main.swift
//  Ass9 ฝากเงิน (ทบต้นทบดอก)
//
//  Created by Thanyapisit on 22/2/2568 BE.
//

import Foundation

var depositPerMonth: Float = 0
var depositPerYear: Float = 0

let interestRate: Float = 0.04

var increasePerYear: Float = 0
var increaseTotal: Float = 0
var total: Float = 0

var year = 1
let totalYears = 5
let monthsPerYear = 12

print("ใส่จำนวนเงินฝากเท่าๆกันทุกเดือนในระยะเวลา 5 ปี : ", terminator: "")
depositPerMonth = Float(readLine() ?? "0")!

depositPerYear = depositPerMonth * Float(monthsPerYear)

while year <= totalYears {
    total += depositPerYear
    increasePerYear = total * interestRate
    increaseTotal += increasePerYear
    total += increasePerYear

    print("ปีที่ \(year) : ดอกเบี้ยปีนี้ =  \(increasePerYear) | ยอดรวมสิ้นปี = \(total)")

    year += 1
}

print("ดอกเบี้ยรวมทั้งหมด: \(increaseTotal)")
print("ยอดเงินรวมทั้งหมด: \(total)")
//169 ธัญพิสิษฐ์ ต้าร์
