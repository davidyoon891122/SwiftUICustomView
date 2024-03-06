//
//  SlideMenuView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 3/6/24.
//

import SwiftUI

enum MenuType: String, CaseIterable {
    case main = "Main"
    case sub = "Sub"
    case news = "News"
}

struct SlideMenuView: View {
    
    @State var selecteType: MenuType = .main
    @Namespace private var namespace
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(MenuType.allCases, id: \.self) { type in
                    VStack {
                        Button(action: {
                            withAnimation {
                                self.selecteType = type
                            }
                        }, label: {
                            Text(type.rawValue)
                        })
                        if selecteType == type {
                            Color.black
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "button", in: namespace)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SlideMenuView()
}
