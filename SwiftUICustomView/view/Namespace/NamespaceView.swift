//
//  NamespaceView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI

struct NamespaceView: View {
    
    @Namespace private var namespace
    @State private var isFlipped: Bool = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
            } else {
                Circle()
                    .matchedGeometryEffect(id: "shape", in: namespace)
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .foregroundColor(.red)
            }
            
            Button(action: {
                withAnimation {
                    isFlipped.toggle()
                }
            }, label: {
                Text("Toggle")
            })
        }
        .padding()
    }
    
}

#Preview {
    NamespaceView()
}
