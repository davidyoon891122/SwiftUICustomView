//
//  MyDropItemsView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct MyDropItemsView: View {

    let items: [String]

    @Binding var selection: String
    @Binding var isSelected: Bool

    var body: some View {
        VStack(spacing: 0) {
            ForEach(items, id: \.self) { item in
                HStack {
                    Text(item)
                    Spacer()
                    Image(systemName: "checkmark")
                        .font(.caption)
                        .opacity(selection == item ? 1 : 0)
                }
                .foregroundStyle(selection == item ? Color.primary : Color.gray)
                .animation(.none, value: selection)
                .frame(height: 40)
                .contentShape(.rect)
                .padding(.horizontal, 15)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = item
                        isSelected.toggle()
                    }
                }
            }
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .transition(.move(edge: .top))
    }
}

#Preview {
//    ["Coin", "Stock", "MyCoin"]
    MyDropItemsView(items: ["Coin", "Stock", "MyCoin"], selection: .constant("Coin"), isSelected: .constant(true))
}
