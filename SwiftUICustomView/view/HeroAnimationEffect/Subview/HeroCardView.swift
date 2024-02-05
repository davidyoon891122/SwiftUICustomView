//
//  HeroCardView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroCardView: View {
    
    @Binding var isShowingDetail: Bool
    @Binding var isAppeared: Bool
    
    let animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                Image("header")
                    .resizable()
                    .matchedGeometryEffect(id: AnimationId.imageId, in: animation, anchor: .top)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: Dimens.cardForegroundHeight, height: Dimens.cardForegroundHeight, alignment: .top)
                    .overlay(
                        Circle()
                            .stroke(.gray)
                    )
                Spacer()
                    .frame(height: Dimens.cardForegroundHeight)
            }
            .frame(width: Dimens.cardWidth, height: Dimens.cardHeight)
            .background(
                Color
                    .black
                    .cornerRadius(Dimens.unit24)
                    .matchedGeometryEffect(id: AnimationId.imageBackgroundId, in: animation)
            )
        
            VStack(alignment: .leading, spacing: 0) {
                HeroAnimatableTitleView(isAppeared: isAppeared)
                    .matchedGeometryEffect(id: AnimationId.titleId, in: animation, anchor: .center)
                    .padding(.bottom, Dimens.unit6)
                HStack(spacing: Dimens.unit12) {
                    HeroAnimatableLablesView(isAppeared: isAppeared, text: Texts.points)
                        .matchedGeometryEffect(id: AnimationId.label1Id, in: animation)
                    HeroAnimatableLablesView(isAppeared: isAppeared, text: Texts.category)
                        .matchedGeometryEffect(id: AnimationId.label2Id, in: animation)
                }
            }
            .padding(Dimens.unit16)
            .frame(width: Dimens.cardWidth, height: Dimens.cardForegroundHeight)
            .background(
                Color.white
                    .cornerRadius(Dimens.unit24, corners: [.topLeft, .topRight])
                    .matchedGeometryEffect(id: AnimationId.textBackgroundId, in: animation)
            )
        }
        .onAppear {
            withAnimation(.linear) {
                isAppeared = isShowingDetail
            }
        }
        .mask {
            RoundedRectangle(cornerRadius: Dimens.unit24)
                .matchedGeometryEffect(id: AnimationId.backgroundShapeId, in: animation)
        }
        .shadow(radius: Dimens.unit16)
        .onTapGesture {
            withAnimation(.hero) {
                isShowingDetail = true
            }
        }
    }
}

#Preview {
    @Namespace var animation
    
    return HeroCardView(isShowingDetail: .constant(false), isAppeared: .constant(false), animation: animation)
}
