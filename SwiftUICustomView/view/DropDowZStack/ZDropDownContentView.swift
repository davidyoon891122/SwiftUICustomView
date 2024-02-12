//
//  ZDropDownContentView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct DropItem: Identifiable {

    let id = UUID()
    let title: String

}

extension DropItem {

    static let items: [Self] = [
        .init(title: "Item1"),
        .init(title: "Item2"),
        .init(title: "Item3"),
        .init(title: "Item4"),
        .init(title: "Item5")
    ]

}


struct ZDropDownContentView: View {

    var body: some View {
        VStack {
            DropTow()
            Button(action: {

            }, label: {
                Text("Test")
            })
        }
    }
}

#Preview {
    ZDropDownContentView()
}
