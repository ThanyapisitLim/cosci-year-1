//
//  main.swift
//  Ass12
//
//  Created by Thanyapisit on 4/4/2568 BE.
//

import Foundation
//Variable
var student: [String:(Float , Float , Float , Float)] = [:]
var menu:Int = 0

repeat {
    //Choose Menu
    print("""
    === MENU ===
    1. ป้อนข้อมูลนักเรียน
    2. แก้ไขข้อมูลนักเรียน
    3. แสดงข้อมูลนักเรียนตามคะแนนรวม มากไปน้อย
    4. ค้นหาข้อมูลคะแนนและเกรดตามชื่อ
    5. ออกจากโปรแกรม
    กรุณาเลือกเมนู (1-5) : 
    """, terminator: "")
    menu = Int(readLine() ?? "0") ?? 0
    
    //Process
    if menu == 1 {
        print("ป้อนจำนวนนักเรียน : ",terminator: "")
        let NumStudent:Int = Int(readLine() ?? "0") ?? 0
        for i in 1...NumStudent {
            print("นักเรียนคนที่ \(i) : ", terminator: "")
            let name = readLine() ?? ""
            print("คะแนนสอบที่ 1 : ",terminator: "")
            let s1:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 2 : ",terminator: "")
            let s2:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 3 : ",terminator: "")
            let s3:Float = Float(readLine() ?? "0") ?? 0
            let total:Float = s1*0.25 + s2*0.25 + s3*0.5
            student[name] = (s1,s2,s3,total)
        }
    }
    
    else if menu == 2 {
        print("กรอกชื่อนักเรียนที่ต้องการแก้ไขข้อมูล : ",terminator: "")
        let name = readLine() ?? ""
        if student[name] != nil {
            print("คะแนนสอบที่ 1 ใหม่ : ", terminator: "")
            let s1:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 2 ใหม่ : ", terminator: "")
            let s2:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 3 ใหม่ : ", terminator: "")
            let s3:Float = Float(readLine() ?? "0") ?? 0
            let total:Float = s1*0.25 + s2*0.25 + s3*0.5
            student[name] = (s1,s2,s3,total)
            print("แก้ไขข้อมูลเรียบร้อยแล้ว")
        }
        else {
            print("ไม่พบข้อมูล \(name)")
        }
    }
    
    else if menu == 3 {
        let studentSort = student.sorted { $0.value.3 > $1.value.3 }
        print("ชื่อ\tสอบ 1\tสอบ 2\tสอบ 3\tรวม")
        for (name, (s1, s2, s3, total)) in studentSort {
            print("\(name)\t\(s1)\t\(s2)\t\(s3)\t\(total)")
        }
    }
    
    else if menu == 4 {
        print("กรอกชื่อนักเรียนที่ต้องการค้นหาข้อมูล : ",terminator: "")
        let name = readLine() ?? ""
        var grade = ""
        if student[name] != nil {
            let (s1, s2, s3, total) = student[name]!
            if total >= 80 {
                grade = "A"
            }
            else if total >= 70 {
                grade = "B"
            }
            else if total >= 60 {
                grade = "C"
            }
            else if total >= 50 {
                grade = "D"
            }
            else if total < 50 {
                grade = "F"
            }
            print("คะแนนสอบ 1 : \(s1)")
            print("คะแนนสอบ 2 : \(s2)")
            print("คะแนนสอบ 3 : \(s3)")
            print("คะแนนรวม : \(total)")
            print("เกรด : \(grade)")
        }
    }
    
    else {
        print("กรุณากรอกข้อมูลใหม่")
    }
    
} while menu != 5
