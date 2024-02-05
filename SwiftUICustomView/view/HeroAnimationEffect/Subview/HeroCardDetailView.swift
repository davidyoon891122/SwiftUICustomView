//
//  HeroCardDetailView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroCardDetailView: View {
    
    @Binding var isShowingDetail: Bool
    @Binding var isAppeared: Bool
    let animation: Namespace.ID
    
    @State private var animateText: Bool = false
    
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottom) {
                VStack(spacing: 0) {
                    Image("header")
                        .resizable()
                        .matchedGeometryEffect(id: AnimationId.imageId, in: animation, anchor: .top)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: Dimens.cardDetailImageHeight, height: Dimens.cardDetailImageHeight)
                        .clipShape(Circle())
                        .padding(.vertical, 2 * Dimens.unit24)
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height - Dimens.cardImageHeight + 2 * Dimens.unit24)
                    
                }
                .frame(width: UIScreen.main.bounds.width)
                .background(
                    Color
                        .black
                        .cornerRadius(0)
                        .matchedGeometryEffect(id: AnimationId.imageBackgroundId, in: animation)
                )
                
                VStack(alignment: .leading, spacing: 0) {
                    HeroAnimatableTitleView(isAppeared: isAppeared)
                        .matchedGeometryEffect(id: AnimationId.titleId, in: animation)
                        .padding(.bottom, Dimens.unit16)
                    HStack(spacing: Dimens.unit12) {
                        HeroAnimatableLablesView(isAppeared: isAppeared, text: Texts.points)
                            .matchedGeometryEffect(id: AnimationId.label1Id, in: animation)
                        HeroAnimatableLablesView(isAppeared: isAppeared, text: Texts.category)
                            .matchedGeometryEffect(id: AnimationId.label2Id, in: animation)
                    }
                    .padding(.bottom, Dimens.unit24)
                    Text(Texts.content)
                        .opacity(animateText ? 1 : 0)
                }
                .padding(Dimens.unit24)
                .background(
                    Color(.white)
                        .cornerRadius(Dimens.unit24, corners: [.topLeft, .topRight])
                        .matchedGeometryEffect(id: AnimationId.textBackgroundId, in: animation)
                )
            }
        }
        .mask {
            RoundedRectangle(cornerRadius: 0)
                .matchedGeometryEffect(id: AnimationId.backgroundShapeId, in: animation)
        }
        .onAppear {
            UIScrollView.appearance().bounces = false
            
            withAnimation(.linear) {
                isAppeared = isShowingDetail
            }
            
            withAnimation(.linear.delay(0.2)) {
                animateText = true
            }
        }
        .onDisappear {
            withAnimation(.linear) {
                animateText = false
            }
        }
        .overlay(
            HeroCloseButton(isShowingDetail: $isShowingDetail)
                .opacity(isAppeared ? 1 : 0)
                .padding(.top, Dimens.unit24)
                .padding(.trailing, Dimens.unit24),
            alignment: .topTrailing
        )
        .statusBarHidden(true)
        .ignoresSafeArea()
    }
    
}

#Preview {
    @Namespace var animation
    
    return HeroCardDetailView(isShowingDetail: .constant(true), isAppeared: .constant(true), animation: animation)
}
