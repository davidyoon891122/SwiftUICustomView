//
//  LabelView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        ViewThatFits {
            Label("Welcome to AwesomeApp", systemImage: "bolt.shield")
                .font(.largeTitle)
            
            Label("Welcome", systemImage: "bolt.shield")
                .font(.largeTitle)
            
            Label("Welcome", systemImage: "bolt.shield")
        }
    }
}

#Preview {
    LabelView()
}
