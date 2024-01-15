//
//  SideView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/15/24.
//

import SwiftUI

struct SideView: View {
    
    @Binding var isShowing: Bool
    var content: AnyView
    var direction: Edge
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                content
                    .transition(.move(edge: direction))
                    .background(.white)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
    }
}

//#Preview {
//    SideView(isShowing: .constant(true), content: Text("Hello"), direction: .trailing)
//}
