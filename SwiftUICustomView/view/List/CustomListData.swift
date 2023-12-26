//
//  CustomListData.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/26/23.
//

import Foundation

struct CustomListData: Identifiable {
    
    let id = UUID()
    let title: String
    var isCompleted: Bool = false
    var isDownloaded: Bool = false
    
    mutating func toggleIsCompleted() {
        isCompleted.toggle()
    }
    
    mutating func toggleIsDownloaded() {
        isDownloaded.toggle()
    }
    
}

extension CustomListData {
    static let items: [CustomListData] = [
        CustomListData(title: "One"),
        CustomListData(title: "Two"),
        CustomListData(title: "Three"),
        CustomListData(title: "Four"),
        CustomListData(title: "Five")
    ]
}
