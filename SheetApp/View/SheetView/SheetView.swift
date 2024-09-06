//
//  SheetView.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct SheetView: View {
    @Binding var employees: [Employee]
    var dates: [Date]
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            //最上面一行，包括「名字」以及「連續7天的日期」
            HStack(spacing: 4) {
                EmployeesName(employeeName: "名字")
                ForEach(dates, id: \.self) { date in
                    DateAndWeek(date: date)
                }
            }
            
            //每個行列上的資料，包括「員工名字」和「員工排班狀況」
            ForEach(employees) { employee in
                HStack(spacing: 4) {
                    EmployeesName(employeeName: employee.name)
                    EmployeeShiftRow(employee: employee)
                }
            }
        }
    }
}

#Preview {
    TabBarView(tabSelecter: 0)
}
