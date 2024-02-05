//
//  ToastContentView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/28/24.
//

import SwiftUI

struct ToastContentView: View {

    @State private var toast: Toast? = nil

    var body: some View {
        VStack(spacing: 32) {
            Button(action: {
                toast = Toast(style: .success, message: "Saved.", width: 160)
            }, label: {
                Text("Run (Success)")
            })

            Button(action: {
                toast = Toast(style: .info, message: "Btw, you are a good person.")
            }, label: {
                Text("Run (Info)")
            })

            Button(action: {
                toast = Toast(style: .warning, message: "Beware of a dog!")
            }, label: {
                Text("Run (Warning)")
            })

            Button(action: {
                toast = Toast(style: .error, message: "Fatal error, blue screen level.")
            }, label: {
                Text("Run (Error)")
            })
        }
        .toastView(toast: $toast)
    }

}

#Preview {
    ToastContentView()
}
