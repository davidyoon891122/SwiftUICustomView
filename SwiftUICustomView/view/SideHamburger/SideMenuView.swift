//
//  SideMenuView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/15/24.
//

import SwiftUI

struct SideMenuView: View {
    
    @State var presentSideMenu: Bool = true
    
    var body: some View {
        ZStack {
            SideMenuView()
            
            Button {
                presentSideMenu.toggle()
            } label: {
                HStack {
                    Text("Show Menu")
                }
            }
        }
        .background(.black)
    }
    
    @ViewBuilder
    private func SideMenuView() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuContentView(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
}

#Preview {
    SideMenuView()
}
