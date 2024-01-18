//
//  PositionAndOffsetAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct PositionAndOffsetAnimationView: View {
    
    @State var isShowing: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .offset(x: isShowing ? 0 : -200)
                .animation(.spring(), value: isShowing)
        }
        .padding()
        .onAppear {
            isShowing.toggle()
        }
    }
    
    
}

#Preview {
    PositionAndOffsetAnimationView()
}
