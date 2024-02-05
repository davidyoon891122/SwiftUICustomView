//
//  HeroContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct HeroContentView: View {
    
    @State private var isShowingDetail: Bool = false
    
    @State private var isAppeared: Bool = false
    
    @State private var isAnimating: Bool = false
    
    @Namespace var animation
    
    private func checkOnGoingAnimation(newValue: Bool) {
        if newValue {
            isAnimating = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                isAnimating = false
            }
        } else {
            isAnimating = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                isAnimating = false
            }
        }
    }
    
    var body: some View {
        ZStack {
            if isShowingDetail {
                HeroCardDetailView(
                    isShowingDetail: $isShowingDetail,
                    isAppeared: $isAppeared,
                    animation: animation
                )
                .transition(.scale(1))
                .disabled(isAnimating)
            } else {
                HeroCardView(
                    isShowingDetail: $isShowingDetail,
                    isAppeared: $isAppeared,
                    animation: animation
                )
                .transition(.scale(1))
                .disabled(isAnimating)
            }
        }
        .onChange(of: isShowingDetail) {
            checkOnGoingAnimation(newValue: $0)
        }
    }
    
}

#Preview {
    HeroContentView()
}
