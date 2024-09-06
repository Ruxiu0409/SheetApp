//
//  EmployeeShiftRow.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct EmployeeShiftRow: View {
    var employee: Employee
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<7, id: \.self) { day in
                EmployeeShiftBlock(employee: employee, index: day)
            }
        }
    }
}

#Preview {
    EmployeeShiftRow(employee: sampleEmployees[0])
}
