//
//  HereAnimationView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HereAnimationView: View {
    
    @Namespace var animation
    @State private var shouldAnimate = false
    
    var body: some View {
        VStack {
            if shouldAnimate {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: animation)
            } else {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: animation)
                    .frame(width: 200, height: 200)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                shouldAnimate.toggle()
            }
        }
    }
    
}

#Preview {
    HereAnimationView()
}
