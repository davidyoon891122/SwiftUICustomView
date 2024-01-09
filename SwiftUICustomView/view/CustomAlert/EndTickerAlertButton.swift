//
//  EndTickerAlertButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/9/24.
//

import SwiftUI

struct EndTickerAlertButton: View {
    typealias Action = () -> ()
    
    private let action: Action
    private let title: Text
    let color: Color?
    
    init(action: @escaping Action, title: Text, color: Color?) {
        self.action = action
        self.title = title
        self.color = color
    }
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            title
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
        .background(color)
    }
}

#Preview {
    EndTickerAlertButton(action: {
        print("Tap")
    }, title: Text("Confirm"), color: .gray)
}
