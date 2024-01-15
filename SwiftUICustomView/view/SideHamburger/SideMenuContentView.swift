//
//  SideMenuContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/15/24.
//

import SwiftUI

struct SideMenuContentView: View {
    
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        HStack {
            ZStack {
                VStack {
                    ForEach(0..<20) { 
                        Text("Menu : \($0)")
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding([.leading, .trailing], 20)
    }
}

#Preview {
    SideMenuContentView(presentSideMenu: .constant(true))
}
