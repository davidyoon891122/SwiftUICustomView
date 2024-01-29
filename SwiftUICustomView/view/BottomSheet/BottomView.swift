//
//  BottomView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/29/24.
//

import SwiftUI

struct BottomView: View {


    var body: some View {
        VStack(alignment: .leading) {
            Text("The main")
                .font(.largeTitle)
                .bold()
            Text("This is the test view for the bottom sheet")
                .foregroundStyle(.gray)
                .font(.subheadline)
                .padding(.vertical)

            ForEach(0..<10) {
                Text("\($0). First is the first ")
            }
        }
        .padding()
    }

}

#Preview {
    BottomView()
}
