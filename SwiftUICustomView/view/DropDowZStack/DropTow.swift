//
//  DropTow.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct DropTow: View {
    @State var show: Bool = false
    @State var name: String = "Item1"

    private let drop: [DropItem] = DropItem.items

    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    ScrollView {
                        VStack(spacing: 17) {
                            ForEach(drop) { item in
                                Button {
                                    withAnimation {
                                        name = item.title
                                        show.toggle()
                                    }
                                } label: {
                                    Text(item.title)
                                        .foregroundStyle(.white.opacity(0.6))
                                        .bold()
                                    Spacer()
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 15)
                    }
                }
                .frame(height: show ? 200 : 50)
                .offset(y: show ? 0 : -135)

                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 60)
                    HStack {
                        Text(name)
                            .font(.title2)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .rotationEffect(.degrees(show ? -90 : 0))
                    }
                    .bold()
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                }
                .offset(y: -133)
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }

            }
        }
        .padding()
        .frame(height: 280)
        .offset(y: 40)
    }
}

#Preview {
    DropTow()
}
