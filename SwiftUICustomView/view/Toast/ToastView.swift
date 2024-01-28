//
//  ToastView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/28/24.
//

import SwiftUI

struct ToastView: View {

    var style: ToastStyle
    var message: String
    var width = CGFloat.infinity
    var onCancleTapped: (() -> Void)


    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: style.iconFileName)
                    .foregroundStyle(style.themeColor)
                Text(message)
                    .font(.caption)
                    .foregroundStyle(Color("toastForeground"))

                Spacer(minLength: 10)

                Button(action: {
                    onCancleTapped()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(style.themeColor)
                })
            }
            .padding()
        }
        .background(Color("toastBackground"))
        .overlay(
            Rectangle()
                .fill(.red)
                .frame(width: 6)
                .clipped(),
            alignment: .leading
        )
        .frame(minWidth: 0, maxWidth: width)
        .clipShape(.rect(cornerRadius: 8))
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 1)
        .padding(.horizontal, 16)
    }

}

#Preview {
    ToastView(style: .success, message: "This is an info message", width: .infinity, onCancleTapped: {
        print("Hello Cancel")
    })
}
