//
//  main.swift
//  Ass12
//
//  Created by Thanyapisit on 4/4/2568 BE.
//

import Foundation
//Variable
var student: [[Float]] = []
var names: [String] = []
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
            let realS1 = s1/80*25
            let realS2 = s2/60*25
            let realS3 = s3/40*50
            let total = (s1 / 80.0 * 25) + (s2 / 60.0 * 25) + (s3 / 40.0 * 50)
            names.append(name)
            student.append([s1, s2, s3, total])
            print("""
            นักเรียนชื่อ : \(name)
            คะแนนดิบ (สอบ 1, 2, 3) : \(s1), \(s2), \(s3)
            คิดคะแนน (25%, 25%, 50%) : \(realS1), \(realS2), \(realS3)
            คะแนนรวมทั้งหมด : \(total)
            """)

        }
    }

    else if menu == 2 {
        print("กรอกชื่อที่ต้องการเปลี่ยนข้อมูล : ", terminator: "")
        let searchName = readLine() ?? ""
        var foundIndex = -1
        for i in 0..<names.count {
            if names[i] == searchName {
                foundIndex = i
                break
            }
        }

        if foundIndex != -1 {
            print("คะแนนสอบที่ 1 : ",terminator: "")
            let s1:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 2 : ",terminator: "")
            let s2:Float = Float(readLine() ?? "0") ?? 0
            print("คะแนนสอบที่ 3 : ",terminator: "")
            let s3:Float = Float(readLine() ?? "0") ?? 0
            let realS1 = s1/80*25
            let realS2 = s2/60*25
            let realS3 = s3/40*50
            let total = (s1 / 80.0 * 25) + (s2 / 60.0 * 25) + (s3 / 40.0 * 50)
            student[foundIndex] = [s1, s2, s3, total]
            print("""
            นักเรียนชื่อ : \(searchName)
            คะแนนดิบ (สอบ 1, 2, 3) : \(s1), \(s2), \(s3)
            คิดคะแนน (25%, 25%, 50%) : \(realS1), \(realS2), \(realS3)
            คะแนนรวมทั้งหมด : \(total)
            """)
            print("แก้ไขข้อมูลเรียบร้อยแล้ว ✅")
        }
        else {
            print("ไม่พบนักเรียนชื่อ : \(searchName)")
        }
    }

    else if menu == 3 {
        let nameStudent = zip(names, student)
        let sortedNameStudents = nameStudent.sorted { $0.1[3] > $1.1[3] }
        print("ชื่อ\tสอบ 1\tสอบ 2\tสอบ 3\tรวม")
        for (name, student) in sortedNameStudents {
            print("\(name)\t\(student[0])\t\(student[1])\t\(student[2])\t\(student[3])")
        }
    }

    else if menu == 4 {
        print("กรอกชื่อที่ต้องการหา : ", terminator: "")
        let searchName = readLine() ?? ""
        var foundIndex = -1

        for i in 0..<names.count {
            if names[i] == searchName {
                foundIndex = i
                break
            }
        }

        if foundIndex != -1 {
            let s = student[foundIndex]
            let total = s[3]
            
            var grade = ""

            if total >= 80 {
                grade = "A"
            } else if total >= 70 {
                grade = "B"
            } else if total >= 60 {
                grade = "C"
            } else if total >= 50 {
                grade = "D"
            } else {
                grade = "F"
            }

            print("ชื่อนักเรียน : \(searchName)")
            print("คะแนนสอบ 1 : \(s[0])")
            print("คะแนนสอบ 2 : \(s[1])")
            print("คะแนนสอบ 3 : \(s[2])")
            print("คะแนนรวม : \(s[3])")
            print("เกรด : \(grade)")
        }
        else {
            print("ไม่พบนักเรียนชื่อ \(searchName)")
        }
    }

    
} while menu != 5
