//
//  AnimationSymbolMainView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/29/24.
//

import SwiftUI

struct AnimationSymbolMainView: View {

    @State private var animationsRunning: Bool = false

    var body: some View {
        Button(action: {
            withAnimation {
                animationsRunning.toggle()
            }
        }, label: {
            Text("Start Animations")
        })

        VStack {
            HStack {
                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.iterative, value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.cumulative, value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.reversing.iterative, value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.reversing.cumulative, value: animationsRunning)
            }

            HStack {
                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.iterative, options: .repeating, value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.cumulative, options: .repeat(3), value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.reversing.iterative, options: .speed(3), value: animationsRunning)

                Image(systemName: "square.stack.3d.up")
                    .symbolEffect(.variableColor.reversing.cumulative, options: .repeat(3).speed(3), value: animationsRunning)
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    AnimationSymbolMainView()
}
