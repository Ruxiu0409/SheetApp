//
//  TimeTextField.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/3.
//

import SwiftUI

struct TimeTextField: View {
    let title: String
    @Binding var content: String
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 4){
                Text("\(title)：")
                TextField("輸入整數...", text: $content)
                    .keyboardType(.numberPad)
                    .frame(width: 200)
                    .padding(.horizontal,10)
                    .padding(.vertical,6)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        }
    }
}

#Preview {
    TimeTextField(title: "上班", content: .constant(""))
}
