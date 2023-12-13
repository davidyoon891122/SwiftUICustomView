//
//  ButtonWithCustomEffect.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct ButtonWithCustomEffect: View {
    var body: some View {
        Button(action: {
            print("did tap custom effect")
        }, label: {
            Text("CustomPressedEffect")
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .foregroundStyle(.white)
                .background(.black)
                .cornerRadius(16)
        })
        .buttonStyle(ButtonPressedEffect())
    }
}

struct ButtonPressedEffect: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(configuration.isPressed ? .blue : .yellow)
            .background(configuration.isPressed ? .blue : .yellow)
            .animation(.easeInOut, value: configuration.isPressed)
            .cornerRadius(15)
    }
}

#Preview {
    ButtonWithCustomEffect()
}
