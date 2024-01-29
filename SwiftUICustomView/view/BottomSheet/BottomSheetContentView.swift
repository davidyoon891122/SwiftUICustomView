//
//  BottomSheetContentView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/29/24.
//

import SwiftUI

struct BottomSheetContentView: View {

    @State private var isPresented: Bool = false

    var body: some View {
        VStack {
            ZStack {
                Button("Open Button sheet") {
                    isPresented.toggle()
                }

                BottomSheet(isPresented: $isPresented, content: BottomView())

            }
        }
    }
}

#Preview {
    BottomSheetContentView()
}
