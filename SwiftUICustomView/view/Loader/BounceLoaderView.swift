//
//  BounceLoaderView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/25/24.
//

import SwiftUI

struct BounceLoaderView: View {

    @State private var offsetY1: CGFloat = 0.0
    @State private var offsetY2: CGFloat = 0.0
    @State private var offsetY3: CGFloat = 0.0

    let dotSize: CGFloat = 20.0
    let bounceDistance: CGFloat = 20.0
    let animationDuration: Double = 0.5
    let delayBetweenDots: Double = 0.2

    var body: some View {
        HStack {
            DotView()
                .offset(y: offsetY1)
            DotView()
                .offset(y: offsetY2)
            DotView()
                .offset(y: offsetY3)
        }
        .onAppear {
            animateDots()
        }
    }

    private func animateDots() {
        withAnimation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true)) {
            offsetY1 = bounceDistance
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + delayBetweenDots) {
            withAnimation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true)) {
                offsetY2 = bounceDistance
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2 * delayBetweenDots) {
            withAnimation(.easeInOut(duration: animationDuration).repeatForever(autoreverses: true)) {
                offsetY3 = bounceDistance
            }
        }
    }

}

struct DotView: View {

    let dotSize: CGFloat = 10.0

    var body: some View {
        Circle()
            .frame(width: dotSize, height: dotSize)
            .foregroundStyle(.orange)
    }
    
}


#Preview {
    BounceLoaderView()
}

