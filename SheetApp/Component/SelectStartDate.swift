//
//  SelectStartDate.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct SelectStartDate: View {
    @Binding var startDate: Date
    
    var body: some View {
        DatePicker("選擇起始日期", selection: $startDate, displayedComponents: .date)
    }
}

#Preview {
    SelectStartDate(startDate: .constant(Date()))
}
