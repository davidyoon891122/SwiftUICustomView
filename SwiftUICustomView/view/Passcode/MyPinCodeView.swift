//
//  MyPinCodeView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/27/24.
//

import SwiftUI

struct MyPinCodeView: View {

    @State private var passcode: String = ""
    @State private var codeCharacter: [Character] = .init(repeating: "0", count: 6)

    private let codeLength: Int = 6

    var body: some View {
        ZStack {
            VStack {
                Text("Passcode")
                    .bold()
                    .font(.largeTitle)
                ZStack {
                    HStack(spacing: 22) {
                        ForEach(0..<codeLength, id: \.self) { index in
                            let isFill = codeCharacter[index] == "1"
                            Circle()
                                .fill(isFill ? .purple : .clear)
                                .stroke(isFill ? .purple : .gray)
                                .frame(width: isFill ? 32 : 30, height: isFill ? 33 : 30)
                        }
                    }
                    .padding()
                    TextField("", text: $passcode)
                        .accentColor(.clear)
                        .foregroundStyle(.clear)
                        .keyboardType(.numberPad)
                }
            }
        }
        .onChange(of: passcode) {
            if passcode.count > codeLength {
                passcode = String(passcode.prefix(codeLength))
            }
            withAnimation(.smooth(duration: 0.8)) {
                codeCharacter = passcode.toDigits
            }
        }
    }
}

extension String {
    
    var toDigits: [Character] {
        var result: [Character] = .init(repeating: "0", count: 6)

        for (index, char) in self.enumerated() {
            if char.isNumber {
                result[index] = "1"
            }
        }

        return result
    }

}

#Preview {
    MyPinCodeView()
}
