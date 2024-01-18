//
//  RotationAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct RotationAnimationView: View {
    
    @State var isRotated: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .rotationEffect(.degrees(isRotated ? 360 : 0))
                .animation(.linear, value: isRotated)
        }
        .padding()
        .onAppear {
            isRotated.toggle()
        }
    }
}

#Preview {
    RotationAnimationView()
}
