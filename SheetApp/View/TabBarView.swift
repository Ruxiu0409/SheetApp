//
//  TabBarView.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/7/23.
//

import SwiftUI

struct TabBarView: View {
    
    //員工初始化名字
    @State var employees: [Employee] = sampleEmployees
    @State private var startDate = Date()
    @State var tabSelecter = 0
    
    var dates: [Date] {
        (0..<7).map { Calendar.current.date(byAdding: .day, value: $0, to: startDate)! }
    }
    
    var body: some View {
        TabView(selection: $tabSelecter){
            //班表頁面
            SheetView(employees: $employees, dates: dates).tag(0)
                .tabItem {
                    Image(systemName: "note.text")
                    Text("班表")
                }
            
            //修改頁面
            EditView(employees: $employees, startDate: $startDate, dates: dates).tag(1)
                .tabItem {
                    Image(systemName: "pencil")
                    Text("修改")
                }
        }
        .tint(.black)
    }
}


#Preview {
    TabBarView(tabSelecter: 0)
}
