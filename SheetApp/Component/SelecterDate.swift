//
//  SelecterDate.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct SelecterDate: View {
    var date: Date
    
    var body: some View {
        VStack(spacing: 0){
            Text("\(dateFormatter.string(from: date))")
                .font(.system(size: 24))
        }
    }
}

#Preview {
    SelecterDate(date: Date())
}
