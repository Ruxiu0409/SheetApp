//
//  Employee.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/2.
//

import Foundation

struct Employee: Identifiable {
    let id = UUID()
    var name: String
    var shifts: [Shift] = Array(repeating: Shift(startTime: "", endTime: ""), count: 7)
}

let sampleEmployees: [Employee] = [
    Employee(name: "小明"),
    Employee(name: "大華"),
    Employee(name: "小美"),
    Employee(name: "志強"),
    Employee(name: "團團"),
    Employee(name: "皮皮"),
    Employee(name: "圓圓"),
    Employee(name: "小強"),
    Employee(name: "小志"),
    Employee(name: "拉拉"),
    Employee(name: "小王"),
    Employee(name: "小佳")
]
