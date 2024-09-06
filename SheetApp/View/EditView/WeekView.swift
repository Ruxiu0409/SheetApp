//
//  WeekView.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct WeekView: View {
    var dates: [Date]
    @Binding var selectedDateIndex: Int
    
    var body: some View {
        ZStack{
            WeekViewBackground()
            
            HStack (spacing: 8){
                ForEach(0..<7) { index in
                    WeekViewSelector(dates: dates, index: index, IsSelected: selectedDateIndex == index)
                        .onTapGesture {
                            selectedDateIndex = index
                        }
                }
            }
        }
    }
}

#Preview {
    WeekView(dates: .init(repeating: Date(), count: 7), selectedDateIndex: .constant(0))
}
