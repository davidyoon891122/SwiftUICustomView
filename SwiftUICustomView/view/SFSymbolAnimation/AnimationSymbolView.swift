//
//  AnimationSymbolView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/29/24.
//

import SwiftUI

struct AnimationSymbolView: View {

    @State var bounceValue: Int = 0
    @State private var isFavorite: Bool = false

    var body: some View {
        VStack {
            VStack {
                Image(systemName: "eraser")
                    .symbolEffect(.bounce, value: bounceValue)
                Button(action: {
                    bounceValue += 1
                }, label: {
                    Text("Bounce")
                })
            }
            .padding()

            VStack {
                Button(action: {
                    isFavorite.toggle()
                }, label: {
                    Label("Activate Inbox Zero", systemImage: "mail.stack")
                })
                .symbolEffect(.bounce.down, value: isFavorite)
                .font(.largeTitle)
            }
            .padding()

            VStack {
                Button(action: {
                    isFavorite.toggle()
                }, label: {
                    Label("Activate Inbox Zero", systemImage: "mail.stack")
                })
                .symbolEffect(.bounce.down, options: .speed(3).repeat(3), value: isFavorite)
                .font(.largeTitle)
            }
            .padding()

            VStack {
                Button {
                    withAnimation {
                        isFavorite.toggle()
                    }
                } label: {
                    Label("Toggle Favorite", systemImage: isFavorite ? "checkmark" : "heart")
                }
                .contentTransition(.symbolEffect(.replace))
            }
            .font(.largeTitle)

        }
    }

}

#Preview {
    AnimationSymbolView()
}
