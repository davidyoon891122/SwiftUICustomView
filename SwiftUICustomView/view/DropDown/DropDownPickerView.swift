//
//  DropDownPickerView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/12/24.
//

import SwiftUI

struct DropDownPickerView: View {

    @Binding var selection: String?
    var state: DropDownPickerState = .bottom
    var options: [String]
    var maxWidth: CGFloat = 180

    @State var showDropDown: Bool = false

    @SceneStorage("drop_down_zindex") private var index = 1000.0
    @State var zIndex: Double = 1000.0

    @Environment(\.colorScheme) var scheme

    var body: some View {
        GeometryReader {
            let size = $0.size

            VStack(spacing: 0) {


                if state == .top && showDropDown {
                    OptionsView()
                }

                HStack {
                    Text(selection == nil ? "Select" : selection!)
                        .foregroundColor(selection != nil ? .black : .gray)


                    Spacer(minLength: 0)

                    Image(systemName: state == .top ? "chevron.up" : "chevron.down")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .rotationEffect(.degrees((showDropDown ? -180 : 0)))
                }
                .padding(.horizontal, 15)
                .frame(width: size.width, height: size.height)
                .background(.white)
                .contentShape(.rect)
                .onTapGesture {
                    index += 1
                    zIndex = index
                    withAnimation(.snappy) {
                        showDropDown.toggle()
                    }
                }
                .zIndex(10)

                if state == .bottom && showDropDown {
                    OptionsView()
                }
            }
            .clipped()
            .contentShape(.rect)
            .background((scheme == .dark ? Color.black : Color.white).shadow(.drop(color: .primary.opacity(0.15), radius: 4)), in: .rect(cornerRadius: 12))
            .frame(height: size.height, alignment: state == .top ? .bottom : .top)

        }
        .frame(width: maxWidth, height: 50)
        .contentShape(.rect)
        .zIndex(zIndex)
    }

    func OptionsView() -> some View {
        VStack(spacing: 0) {
            ForEach(options, id: \.self) { option in
                HStack {
                    Text(option)
                    Spacer()
                    Image(systemName: "checkmark")
                        .font(.caption)
                        .opacity(selection == option ? 1 : 0)
                }
                .foregroundStyle(selection == option ? Color.primary : Color.gray)
                .animation(.none, value: selection)
                .frame(height: 40)
                .contentShape(.rect)
                .padding(.horizontal, 15)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = option
                        showDropDown.toggle()
                    }
                }
            }
        }
        .transition(.move(edge: state == .top ? .bottom : .top))
        .zIndex(1)
    }

}

#Preview {

    let menu: [String] = ["Coin", "Stock", "MyCoin"]

    return DropDownPickerView(selection: .constant("Coin"), options: menu)
}
