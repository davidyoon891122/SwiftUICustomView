//
//  ColorAndBackgroundAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct ColorAndBackgroundAnimationView: View {
    
    @State var isHighlighted: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundStyle(isHighlighted ? .red : .blue)
        }
        .padding()
        .onAppear {
            withAnimation(.linear.delay(2).speed(2)) {
                isHighlighted.toggle()
            }
        }
    }
}

#Preview {
    ColorAndBackgroundAnimationView()
}
