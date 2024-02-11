//
//  PreferenceKeyView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/6/24.
//

import SwiftUI

struct PreferenceKeyView: View {
    
    private var numbers: [String] {
        (0...100).map(String.init)
    }

    var body: some View {
        NavigationStack {
            List(numbers, id: \.self) { number in
                NavigationLink(destination: PreferenceSubView(number: number), label: {
                    Text(number)
                })
            }
        }
        .navigationTitle("Numbers")
        .onPreferenceChange(NavigationBarTitlePreferenceKey.self, perform: { value in
            print("value: \(value)")
        })
    }
}

#Preview {
    PreferenceKeyView()
}
