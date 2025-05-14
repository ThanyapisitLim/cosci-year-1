//
//  main.swift
//  Ass5 Loop
//
//  Created by Thanyapisit on 10/2/2568 BE.
//

import Foundation

print("-- Loop --")
//Input var
var num:Int = 0
//Process var
var Arr: [Float] = []
var sum:Int = 0
var average:Float = 0

//Process
for _ in 1...10 {
    print("Enter the number :", terminator:"")
    num = Int(readLine() ?? "0") ?? 0
    sum += num
    Arr.append(Float(num))
}

//Calculate
average = Float(sum)/10
var num_max = Arr.max()
var num_min = Arr.min()

//Output
print("Sum : \(sum)")
print("Max : \(num_max!)")
print("Min : \(num_min!)")
print("Average : \(average)")

//169 ธัญพิสิษฐ์ ลิมปกานนท์
