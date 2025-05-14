//
//  main.swift
//  LabTest 2
//
//  Created by Thanyapisit on 24/4/2568 BE.
//

import Foundation

var total : Int = 0

print("กรุณากรอกรายได้ต่อเดือน : ",terminator: "")
var income : Int = Int(readLine() ?? "") ?? 0
var incomePerYear = income * 12
print("รายได้ต่อปี : \(incomePerYear)")
total = incomePerYear

let fiftyPercentage = total * 50 / 100
if fiftyPercentage <= 100000 {
    total = total - fiftyPercentage
}
else {
    total = total - 100000
}

var m = 0
repeat {
    print("กรุณากรอกค่าลดหย่อนส่วนตัวสูงสุด 60000 : ",terminator: "")
    m = Int(readLine()!)!
    total = total - m
} while m > 60000

print("กรุณากรอกสถานะ 1.โสด 2.แต่งงาน : ",terminator: "")
let status = Int(readLine()!)!

if status == 1 {
    total = total - 60000
}
else if status == 2 {
    total = total - 60000
    print("มีบุตรหรือไม่มี 1.มี 2.ไม่มี : ",terminator: "")
    let child = Int(readLine()!)!
    if child == 1 {
        total -= 60000
        print("ระบุจำนวนบุตรที่มี : ",terminator: "")
        let numChild = Int(readLine()!)!
        for i in 1...numChild {
            print("ลูกคนที่ \(i) เกิดปีอะไร : ",terminator: "")
            let birth = Int(readLine()!)!
            if i == 1 {
                total -= 30000
            }
            else {
                if birth >= 2561 {
                    total -= 60000
                }
                else {
                    total -= 30000
                }
            }
        }
    }
}
print("กรอกบิดามารดาและคู่สมรสที่ต้องดูแลไม่เกิน 4 คน และอายุบิดามารดาต้องมากกว่า 60 ปี : ",terminator: "")
let parent = Int(readLine()!)!
if parent == 0 {
    print("ไม่มีบิดามารดาและคู่สมรสที่ต้องดูแล")
}
else if parent >= 1 && parent <= 4 {
    total -= parent * 30000
}
else if parent > 4 {
    total -= 4 * 30000
}
print("มีประกันสังคมหรือไม่ 1.มี 2.ไม่มี : ",terminator: "")
var healthInsurance = Int(readLine()!)
if healthInsurance == 1 {
    total -= 9000
}
else if healthInsurance == 2 {
    print("ไม่มีประกันสังคม")
}
print("เลือกกองทุนที่มี 1.กองทุนสำรองเลี้ยงชีพ 2.กองทุนบำเหน็จบำนาญราชการ 3.ไม่มี : ",terminator: "")
let fund = Int(readLine()!)!

if fund == 1 {
    let moneyLife = total * 15 / 100
    if moneyLife <= 500000 {
        total = total - moneyLife
    }
    else {
        total = total - 500000
    }
}
else if fund == 2 {
    let moneyFund = total * 30 / 100
    if moneyFund <= 500000 {
        total = total - moneyFund
    }
    else {
        total = total - 500000
    }
}
else if fund == 3 {
    print("ไม่มีกองทุนให้ลดหย่อน")
}
print("มีเบี้ยประกันชีวิตแบบสสะสมทรัพย์หรือไม่ 1.มี 2.ไม่มี : ",terminator: "")
let lifeInsurance = Int(readLine()!)!
if lifeInsurance == 1 {
    print("กรอกจำนวนเบี้ยประกันสะสมทรัพย์ : ",terminator: "")
    let moneyLifeInsurance = Int(readLine()!)!
    total = total - moneyLifeInsurance
}
else if lifeInsurance == 2 {
    print("ไม่มีเบี้ยประกันชีวิตแบบสะสมทรัพย์")
}

print("กรอกจำนวนเงินที่บริจาค : ",terminator: "")
let moneyHelp = Int(readLine()!)!
let tenPercent = total * 10 / 100
total = total - tenPercent

print("คำนวณภาษีก้าวหน้า")
var taxRate: String = ""
var taxAmount: Double = 0.0

if total <= 150000 {
    taxRate = "0%"
    taxAmount = 0.0
}
else if total <= 300000 {
    taxRate = "5%"
    let taxable = Double(total - 150000)
    taxAmount = taxable * 0.05
}
else if total <= 500000 {
    taxRate = "10%"
    let t1 = 150000.0 * 0.05
    let t2 = Double(total - 300000) * 0.10
    taxAmount = t1 + t2
}
else if total <= 750000 {
    taxRate = "15%"
    let t1 = 150000.0 * 0.05
    let t2 = 200000.0 * 0.10
    let t3 = Double(total - 500000) * 0.15
    taxAmount = t1 + t2 + t3
}
else if total <= 1000000 {
    taxRate = "20%"
    let t1 = 150000.0 * 0.05
    let t2 = 200000.0 * 0.10
    let t3 = 250000.0 * 0.15
    let t4 = Double(total - 750000) * 0.20
    taxAmount = t1 + t2 + t3 + t4
}
else if total <= 2000000 {
    taxRate = "25%"
    let t1 = 150000.0 * 0.05
    let t2 = 200000.0 * 0.10
    let t3 = 250000.0 * 0.15
    let t4 = 250000.0 * 0.20
    let t5 = Double(total - 1000000) * 0.25
    taxAmount = t1 + t2 + t3 + t4 + t5
}
else if total <= 5000000 {
    taxRate = "30%"
    let t1 = 150000.0 * 0.05
    let t2 = 200000.0 * 0.10
    let t3 = 250000.0 * 0.15
    let t4 = 250000.0 * 0.20
    let t5 = 1000000.0 * 0.25
    let t6 = Double(total - 2000000) * 0.30
    taxAmount = t1 + t2 + t3 + t4 + t5 + t6
}
else {
    taxRate = "35%"
    let t1 = 150000.0 * 0.05
    let t2 = 200000.0 * 0.10
    let t3 = 250000.0 * 0.15
    let t4 = 250000.0 * 0.20
    let t5 = 1000000.0 * 0.25
    let t6 = 3000000.0 * 0.30
    let t7 = Double(total - 5000000) * 0.35
    taxAmount = t1 + t2 + t3 + t4 + t5 + t6 + t7
}

print("คุณอยู่ในอัตราภาษี: \(taxRate)")
print("จำนวนเงินภาษีที่ต้องจ่าย: \(String(format: "%.2f", taxAmount)) บาท")
