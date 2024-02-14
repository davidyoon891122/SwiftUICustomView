//
//  MyDropDownContentView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct MyDropDownContentView: View {

    @State private var selection: String = "Coin"
    @State private var isSelected: Bool = false

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    MyDropDownView(selection: $selection)
                    Spacer()
                }
                .zIndex(1)
                Button(action: {

                }, label: {
                    Text("Hey")
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .foregroundStyle(.black)
                        .background(.yellow)
                        .clipShape(.rect(cornerRadius: 8))
                })
            }
            .padding()

        }
    }
}

#Preview {
    MyDropDownContentView()
}
