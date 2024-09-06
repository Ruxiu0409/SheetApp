//
//  SheetAppApp.swift
//  SheetApp
//
//  Created by 蔡承曄 on 2024/9/2.
//

import SwiftUI

@main
struct SheetAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//App主題色
struct AppTheme {
    static let primary = Color(red: 0.2, green: 0.5019607843137255, blue: 0.8) // #3380CC
    static let background = Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922) // #F2F2F7
}

//點擊任一處關閉鍵盤
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

public let dayFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEE"
    return formatter
}()

public let dayNumberFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "d"
    return formatter
}()

public let monthDayFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd"
    formatter.locale = Locale(identifier: "zh_Hant") // 設置為繁體中文
    return formatter
}()

public let weekdayFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    formatter.locale = Locale(identifier: "zh_Hant") // 設置為繁體中文
    return formatter
}()

public let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd EEEE"
    formatter.locale = Locale(identifier: "zh_Hant") // 設置為繁體中文
    return formatter
}()
