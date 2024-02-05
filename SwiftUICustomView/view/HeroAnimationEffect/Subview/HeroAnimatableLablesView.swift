//
//  HeroAnimatableLablesView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroAnimatableLablesView: View {

    let isAppeared: Bool
    let text: String
    
    var body: some View {
        VStack {
            Text(text)
                .animatableSystemFont(size: isAppeared ? 16 : 12)
                .foregroundStyle(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 2)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: isAppeared ? 12 : 8))
                .fixedSize()
        }
    }
    
}

#Preview {
    HeroAnimatableLablesView(isAppeared: false, text: "Hello!")
}
