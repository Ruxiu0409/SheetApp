//
//  EditView.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct EditView: View {
    @Binding var employees: [Employee]
    @Binding var startDate: Date
    var dates: [Date]
    @State private var selectedEmployeeIndex = 0
    @State private var selectedDateIndex = 0
    @State private var isShowingEmployeeSelection = false
    
    var body: some View {
        ZStack{
            Color.clear
                .contentShape(Rectangle())
                .onTapGesture {
                    hideKeyboard()
                }
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Group{
                    SelectStartDate(startDate: $startDate)
                        
                    SelectEmployee(employees: $employees, selectedEmployeeIndex: $selectedEmployeeIndex)
                }
                .padding(.horizontal,20)
                
                WeekView(dates: dates, selectedDateIndex: $selectedDateIndex)
                
                SelecterDate(date: dates[selectedDateIndex])
                
                ShiftDetailView(employee: $employees[selectedEmployeeIndex],selectedDateIndex: $selectedDateIndex, dates: dates[selectedDateIndex])
                
                Spacer()
            }
        }
    }
}

#Preview {
    TabBarView(tabSelecter: 1)
}
