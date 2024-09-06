//
//  EmployeeShiftBlock.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct EmployeeShiftBlock: View {
    var employee: Employee
    var index: Int
    
    var body: some View {
        // 一一一一一
        ZStack {
            Rectangle()
                .frame(width: 40, height: 40)
                .foregroundStyle(AppTheme.background)
            VStack(spacing: 0) {
                let shift = employee.shifts[index]
                if !shift.startTime.isEmpty && !shift.endTime.isEmpty {
                    VStack(alignment: .center ,spacing: 0){
                        Text(shift.startTime)
                            .font(.system(size: 8))
                        Text("~")
                            .font(.system(size: 8))
                            .rotationEffect(.degrees(90))
                        Text(shift.endTime)
                            .font(.system(size: 8))
                    }
                }
                else{
                    Text("休假")
                        .font(.system(size: 8))
                        .foregroundStyle(Color(red: 1.0, green: 0, blue: 0))
                }
            }
            .frame(width: 40, height: 40)
        }
    }
}

#Preview {
    EmployeeShiftBlock(employee: sampleEmployees[0], index: 0)
}
