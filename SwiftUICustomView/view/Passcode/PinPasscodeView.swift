//
//  PinPasscodeView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/27/24.
//

import SwiftUI

struct PinPasscodeView: View {

    var maxDigits: Int = 4

    var label: String = "Enter one time passcode"

    @State var pin: String = ""
    @State var showPin: Bool = false
    @State var isDisabled: Bool = false

    var handler: (String, (Bool) -> Void) -> Void


    var body: some View {
        VStack {
            Text(label)
                .font(.title)
            ZStack {
                pinDots
                backgroundField
            }
            showPinStack
        }
    }

    private var pinDots: some View {
        HStack {
            Spacer()
            ForEach(0..<maxDigits) { index in
                Image(systemName: self.getImageName(at: index))
                    .font(.system(size: 30))
                Spacer()
            }
        }
    }

    private var backgroundField: some View {
        let boundPin = Binding<String>(get: { self.pin }, set: { newValue in
            self.pin = newValue
            self.submitPin()
        })

        return TextField("", text: boundPin, onCommit: submitPin)
            .accentColor(.clear)
            .foregroundStyle(.clear)
            .keyboardType(.numberPad)
            .disabled(isDisabled)
    }

    private var showPinStack: some View {
        HStack {
            Spacer()

            if !pin.isEmpty {
                showPinButton
            }
        }
        .frame(height: 50)
        .padding(.trailing)
    }

    private var showPinButton: some View {
        Button(action: {
            self.showPin.toggle()
        }, label: {
            if self.showPin {
                Image(systemName: "eye.slash.fill").foregroundStyle(.secondary)
            } else {
                Image(systemName: "eye.fill").foregroundStyle(.primary)
            }
        })
    }


    private func submitPin() {
        guard !pin.isEmpty else {
            showPin = false
            return
        }

        if pin.count == maxDigits {
            isDisabled = true

            handler(pin) { isSuccess in
                if isSuccess {
                    print("pin matched, go to next page, no action to perform here")
                } else {
                    pin = ""
                    isDisabled = false
                    print("This has to called after showing toast wht is the failure")
                }
            }
        }

        if pin.count > maxDigits {
            pin = String(pin.prefix(maxDigits))
            submitPin()
        }
    }

    private func getImageName(at index: Int) -> String {
        if index >= self.pin.count {
            return "circle"
        }

        if self.showPin {
            return self.pin.digits[index].numberString + ".circle"
        }

        return "circle.fill"
    }

}


extension String {

    var digits: [Int] {
        var result = [Int]()

        for char in self {
            if let number = Int(String(char)) {
                result.append(number)
            }
        }

        return result
    }

}

extension Int {

    var numberString: String {
        guard self < 10 else { return "0" }

        return String(self)
    }

}


#Preview {
    PinPasscodeView { _,_  in
        print("WTF")
    }
}
