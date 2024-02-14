//
//  MyDropDownView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct MyDropDownView: View {

    @Binding var selection: String
    let maxWidth: CGFloat = 180

    @State private var isSelected: Bool = false

    let items: [String] = ["Coin", "Stock", "MyCoin"]

    var body: some View {
        GeometryReader {

            let size = $0.size

            VStack {
                HStack {
                    Text(selection)
                        .bold()
                    Spacer()
                    Image(systemName:  "chevron.right")
                        .rotationEffect(.degrees((isSelected ? 90 : 0)))
                }
                .padding(.horizontal)
                .contentShape(.rect)
                .frame(width: size.width, height: size.height)
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
                .onTapGesture {
                    withAnimation(.snappy) {
                        isSelected.toggle()
                    }
                }

                if isSelected {
                    MyDropItemsView(items: items, selection: $selection, isSelected: $isSelected)
                }
            }
            .clipped()
            .contentShape(.rect)
            .background(.white)
            .shadow(radius: 10)
            .frame(height: size.height, alignment: .top)


        }
        .frame(width: maxWidth, height: 50)
        .contentShape(.rect)
    }

}

#Preview {
    MyDropDownView(selection: .constant("Select"))
}
