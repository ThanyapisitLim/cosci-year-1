//
//  main.swift
//  Ass15
//
//  Created by Thanyapisit on 18/4/2568 BE.
//

import Foundation
var setter:Int = 0
var divine:Int = 0
var num:Int = 0
var result:Int = 0
var arr: [Int] = []


func inputKB(str:String) -> Int {
    if setter == 0 {
        print("ใส่ค่าตัวตั้ง : ",terminator: "")
        let str = readLine() ?? ""
        num = Int(str)!
    }
    else if setter != 0 {
        print("ใส่ค่าตัวหาร : ",terminator: "")
        let str = readLine() ?? ""
        num = Int(str)!
    }
    return num
}

func divined(sett:Int,divine:Int) {
    var sett = setter
    if setter > divine {
        while sett >= divine {
            sett -= divine
            result += 1
        }
        arr.append(result)
        arr.append(sett)
    }
    else if divine > setter {
        print("ตัวน้อยกว่าไม่สามารถหารตัวมากกว่าได้")
    }
    else if setter == 0 {
        arr.append(0)
        arr.append(0)
    }
    else if divine == 0 {
        print("undefined")
    }
}

repeat {
    setter = inputKB(str:"")
    divine = inputKB(str:"")
} while setter == 0 && divine == 0

divined(sett: setter, divine: divine)
print("ผลลัพธ์ : \(arr[0]) | เศษที่ได้ : \(arr[1])")
