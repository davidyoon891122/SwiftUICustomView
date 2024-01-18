//
//  OpacityAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct OpacityAnimationView: View {
    
    @State var isVisible: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .opacity(isVisible ? 1 : 0)
                .animation(.easeInOut(duration: 1), value: isVisible)
        }
        .padding()
        .onAppear {
            isVisible.toggle()
        }
    }
}

#Preview {
    OpacityAnimationView()
}
