//
//  ScrollViewReaderView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct ScrollViewReaderView: View {
    
    @State var inputText: String = ""
    
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                List(0..<100, id: \.self) { i in
                    Text("Item : \(i)")
                        .id(i)
                }
                
                HStack {
                    TextField("Jump to", text: $inputText)
                        .padding(.leading, 20)
                    Button("Jump") {
                        proxy.scrollTo(Int(inputText))
                    }
                    .padding(20)
                }
            }
        }
    }
}

#Preview {
    ScrollViewReaderView()
}
