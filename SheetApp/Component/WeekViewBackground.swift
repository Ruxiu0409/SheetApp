//
//  WeekViewBackground.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/6.
//

import SwiftUI

struct WeekViewBackground: View {
    var body: some View {
        VStack(spacing:0){
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(AppTheme.background)
                .frame(width: 350,height: 100)
        }
    }
}

#Preview {
    WeekViewBackground()
}
