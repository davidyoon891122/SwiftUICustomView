//
//  HeroAnimatableTitleView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroAnimatableTitleView: View {
    
    let isAppeared: Bool
    
    var body: some View {
        Text("Learning: Do a\nSwiftUI tutorial")
            .foregroundStyle(.black)
            .animatableSystemFont(size: isAppeared ? 32 : 16, weight: .bold)
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, alignment: .leading)
            .lineLimit(2, reservesSpace: true)
    }
}

#Preview {
    HeroAnimatableTitleView(isAppeared: false)
}
