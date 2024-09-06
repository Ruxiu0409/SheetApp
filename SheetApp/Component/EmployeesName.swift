//
//  EmployeesName.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct EmployeesName: View {
    var employeeName: String
    
    var body: some View {
        VStack(spacing: 0){
            Text(employeeName)
                .frame(width: 40,height: 40)
                .font(.system(size: 16))
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    EmployeesName(employeeName: "小明")
}
