//
//  PreferenceSubView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/6/24.
//

import SwiftUI

struct PreferenceSubView: View {

    let number: String

    var body: some View {
        Text(number)
            .navigationTitle(number)
            .preference(key: NavigationBarTitlePreferenceKey.self, value: number)
    }
}

#Preview {
    PreferenceSubView(number: "0")
}
