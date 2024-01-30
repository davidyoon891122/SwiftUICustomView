//
//  CircleLoaderView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/25/24.
//

import SwiftUI

struct CircleLoaderView: View {

    @State private var angle: Double = 0.0

    var body: some View {
        Circle()
            .trim(from: 0.1, to: 1.0)
            .stroke(style: StrokeStyle(
                lineWidth: 8,
                lineCap: .round,
                lineJoin: .round
            ))
            .foregroundStyle(.orange)
            .rotationEffect(Angle(degrees: angle))
            .onAppear {
                withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false)) {
                    angle = 360
                }
            }
    }
}

#Preview {
    CircleLoaderView()
        .preferredColorScheme(.dark)
}
