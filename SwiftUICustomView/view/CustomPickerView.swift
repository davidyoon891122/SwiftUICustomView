//
//  CustomPickerView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/20/23.
//

import SwiftUI

struct CustomPickerView: View {
    @State private var selectedCatogory = "Chinese"
    @State private var isOpenPicker: Bool = true
    
    var body: some View {
        ZStack(alignment:.bottom) {
            VStack {
                Text("\(selectedCatogory)")
                
                Button(action: {
                    isOpenPicker.toggle()
                }, label: {
                    Text("Open Picker")
                })
                
                Spacer()
            }
            
            if isOpenPicker {
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            isOpenPicker.toggle()
                        }, label: {
                            Text("Done")
                        })
                        .tint(.black)
                    }
                    .padding()
                    Picker("Food Category", selection: $selectedCatogory) {
                        Text("Italian")
                            .tag("Italian")
                        Text("Chinese")
                            .tag("Chinese")
                    }
                    .pickerStyle(.wheel)
                }
                .background(.secondary)
            }
        }
    }
}

#Preview {
    CustomPickerView()
}
