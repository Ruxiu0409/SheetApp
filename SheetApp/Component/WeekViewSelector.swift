//
//  WeekViewSelecter.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct WeekViewSelector: View {
    var dates: [Date]
    var index: Int
    var IsSelected: Bool
    
    var body: some View {
        VStack (spacing: 0){
            Text(dayFormatter.string(from: dates[index]))
                .font(.system(size: 12))
            Text(dayNumberFormatter.string(from: dates[index]))
                .font(.system(size: 17))
                .fontWeight(.bold)
        }
        .padding(8)
        .background(IsSelected ? AppTheme.primary : Color.clear)
        .foregroundStyle(IsSelected ? .white : .black)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

#Preview {
    WeekViewSelector(dates: .init(repeating: Date(), count: 7), index: 1, IsSelected: true)
}
