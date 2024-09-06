//
//  ShiftDetailView.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct ShiftDetailView: View {
    @Binding var employee: Employee
    @Binding var selectedDateIndex: Int
    var dates: Date
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            TimeTextField(title: "上班時間", content: $employee.shifts[selectedDateIndex].startTime)
            TimeTextField(title: "下班時間", content: $employee.shifts[selectedDateIndex].endTime)
        }
    }
}

#Preview {
    ShiftDetailView(employee: .constant(sampleEmployees[0]), selectedDateIndex: .constant(1), dates: Date())
}
