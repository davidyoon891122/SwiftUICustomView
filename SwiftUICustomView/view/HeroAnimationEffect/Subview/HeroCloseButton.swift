//
//  HeroCloseButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroCloseButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: Dimens.unit16))
            .frame(width: Dimens.closeButtonSize, height: Dimens.closeButtonSize)
            .foregroundStyle(.black)
            .background(.white)
            .clipShape(Circle())
            .onTapGesture {
                withAnimation(.hero) {
                    isShowingDetail = false
                }
            }
    }
    
}

#Preview {
    HeroCloseButton(isShowingDetail: .constant(true))
        .preferredColorScheme(.dark)
}
