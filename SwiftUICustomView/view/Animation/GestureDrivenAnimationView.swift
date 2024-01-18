//
//  GestureDrivenAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct GestureDrivenAnimationView: View {
    
    @State var positionX: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .position(x: positionX)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            withAnimation {
                                positionX = 180
                            }
                        }
                )
        }
        .padding()
    }
}

#Preview {
    GestureDrivenAnimationView()
}
