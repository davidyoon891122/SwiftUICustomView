//
//  BlendModeTestView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/14/24.
//

import SwiftUI

struct BlendModeTestView: View {

    @State private var amount = 0.0

    var body: some View {
        VStack {
//            ZStack {
//                Circle()
//                    .fill(Color(red: 1, green: 0, blue: 0))
//                    .frame(width: 200 * amount)
//                    .offset(x: -50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(Color(red: 0, green: 1, blue: 0))
//                    .frame(width: 200 * amount)
//                    .offset(x: 50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(Color(red: 0, green: 0, blue: 1))
//                    .frame(width: 200 * amount)
//                    .blendMode(.screen)
//            }
//            .frame(width: 300, height: 300)
        Image("sample")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .saturation(amount)
            .blur(radius: (1 - amount) * 20)

            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    BlendModeTestView()
}
