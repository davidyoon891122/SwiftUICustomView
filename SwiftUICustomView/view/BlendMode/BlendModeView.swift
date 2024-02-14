//
//  BlendModeView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/14/24.
//

import SwiftUI

struct BlendModeView: View {
    var body: some View {
        VStack {
//            Image("sample")
//                .blendMode(.multiply)
//                .overlay(
//                    Rectangle()
//                        .fill(.green)
//                        .blendMode(.screen)
//                )

//            Text("SwiftUI Blending Magic")
//                .font(.title)
//                .foregroundStyle(.blue)
//                .overlay {
//                    Rectangle()
//                        .fill(.red)
//                        .blendMode(.colorBurn)
//                }

            Image("sample")
                .blendMode(.multiply)
                .overlay(
                    text
                        .foregroundColor(.white)
                        .blendMode(.difference)
                        .overlay(text.blendMode(.hue))
                        .overlay(text.foregroundColor(.white).blendMode(.overlay))
                        .overlay(text.foregroundColor(.black).blendMode(.overlay))
                )

        }
    }

    var text: some View {
        Text("SwiftUI Blending Magic")
    }
}

#Preview {
    BlendModeView()
}
