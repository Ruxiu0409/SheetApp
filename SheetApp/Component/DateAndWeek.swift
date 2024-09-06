//
//  DateAndWeek.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct DateAndWeek: View {
    var date: Date
    
    var body: some View {
        VStack(spacing: 0) {
           Text("\(monthDayFormatter.string(from: date))")
            Text("\(weekdayFormatter.string(from: date))")
        }
        .font(.system(size: 12))
        .frame(width: 40,height: 40)
    }
}

#Preview {
    DateAndWeek(date: Date())
}
