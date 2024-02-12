//
//  DropDownContentView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct DropDownContentView: View {

    @State var selection: String? = nil

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    DropDownPickerView(
                        selection: $selection,
                        options: [
                            "Coin",
                            "Stock",
                            "MyCoin"
                        ]
                    )
                    HStack {
                        Button(action: {
                            print("did tap button")
                        }, label: {
                            Text("Main ContentView")
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .foregroundStyle(.black)
                                .background(.yellow)
                                .clipShape(.rect(cornerRadius: 8))
                        })
                        Spacer()
                    }
                    .padding(.horizontal)

                }
            }
            .navigationTitle("Main")
        }
    }


}

#Preview {
    DropDownContentView()
}
