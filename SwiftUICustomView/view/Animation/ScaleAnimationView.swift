//
//  ScaleAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct ScaleAnimationView: View {
    
    @State var isHighlighted: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .scaleEffect(isHighlighted ? 1.5 : 1)
                .animation(.easeInOut(duration: 1), value: isHighlighted)
        }
        .padding()
        .onAppear {
            isHighlighted.toggle()
        }
    }
}

#Preview {
    ScaleAnimationView()
}
