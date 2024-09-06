//
//  SelectEmployee.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct SelectEmployee: View {
    @Binding var employees: [Employee]
    @Binding var selectedEmployeeIndex: Int
    
    var body: some View {
        
        HStack(spacing: 0){
            Text("當前選擇: \(employees[selectedEmployeeIndex].name)")
            
            Spacer()
            
            Picker("", selection: $selectedEmployeeIndex) {
                ForEach(employees.indices, id: \.self) { index in
                    Text(employees[index].name)
                }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}

#Preview {
    SelectEmployee(employees: .constant(sampleEmployees), selectedEmployeeIndex: .constant(0))
}
