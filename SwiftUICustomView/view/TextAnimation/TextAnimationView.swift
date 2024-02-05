//
//  TextAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct TextAnimationView: View {
    
    @State private var fontSize: CGFloat = 32.0
    @State private var underFontSize: CGFloat = 32.0
    @State private var systemFontSize: CGFloat = 32.0
    
    var body: some View {
        VStack {
            Text("Upper iOS 15")
                .font(.custom("Georgia", size: fontSize))
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                        fontSize = 50
                    }
                }
            Spacer()
            Text("Under iOS 15")
                .animatableFont(name: "Georgia", size: underFontSize)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                        underFontSize = 50
                    }
                }
            Spacer()
            Text("System Font")
                .animatableSystemFont(size: systemFontSize)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                        systemFontSize = 50
                    }
                }
            
        }
    }
    
}

#Preview {
    TextAnimationView()
}
