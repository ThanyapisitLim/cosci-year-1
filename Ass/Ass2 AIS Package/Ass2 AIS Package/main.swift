//
//  main.swift
//  Ass2 AIS Package
//
//  Created by Thanyapisit on 31/1/2568 BE.
//

import Foundation

print("-- AIS Package Calculator --")
//input var
var package: Int = 0
var voice: Int = 0
var sms: Int = 0
var mms : Int = 0
var phone_num: String = ""
//process var
var free_voice : Int = 0
var over_voice : Float = 0
let vat : Float = 0.07
//output var
var price : Float = 0
var vat_price : Float = 0
var over_voice_price : Float = 0
var sms_price : Float = 0
var mms_price : Float = 0
var total_price : Float = 0

//Input
print("Enter your package (1299/ 1499/ 1699 /0) :")
package = Int(readLine() ?? "0") ?? 0
print("Enter call duration in minutes :")
voice = Int(readLine() ?? "0") ?? 0
print("Enter SMS count :")
sms = Int(readLine() ?? "0") ?? 0
print("Enter MMS count :")
mms = Int(readLine() ?? "0") ?? 0
print("Enter your phone number :")
phone_num = readLine() ?? ""

print("------------------------------------")
print("Receipt : \(phone_num)")

if package == 1299 || package == 1499 || package == 1699 || package == 0 {
    //Process SMS and MMS
    sms_price = Float(sms) * 2.50
    mms_price = Float(mms) * 4.50
    
    //Process Package
    //Package 1299
    if package == 1299 {
        free_voice = 300
        if voice > free_voice {
            over_voice = Float(voice - free_voice)
            over_voice_price = Float(over_voice * 1.50)
        }
        else {
            over_voice_price = 0
        }
    }
    //Package 1499
    else if package == 1499 {
        free_voice = 350
        if voice > free_voice {
            over_voice = Float(voice - free_voice)
            over_voice_price = Float(over_voice * 1.50)
        }
        else {
            over_voice_price = 0
        }
    }
    //Package 1699
    else if package == 1699 {
        free_voice = 400
        if voice > free_voice {
            over_voice = Float(voice - free_voice)
            over_voice_price = Float(over_voice * 1.50)
        }
        else {
            over_voice_price = 0
        }
    }
    else {
        free_voice = 0
        over_voice_price = Float(voice) * 1.50
    }
    
    //Calculate
    price = Float(package) + over_voice_price + sms_price + mms_price
    vat_price = price * vat
    total_price = price + vat_price
    
    //Output
    print("Package : \(package) Bath")
    print("Over voice : \(over_voice_price) Bath")
    print("SMS price : \(sms_price) Bath")
    print("MMS price : \(mms_price) Bath")
    print("Vat(7%) : \(vat_price) Bath")
    print("Total : \(total_price) Bath")
}
else {
    print("Please enter package only 1299/ 1499/ 1699/ 0")
}

//169 ธัญพิสิษฐ์ ลิมปกานนท์ (ต้าร์)
