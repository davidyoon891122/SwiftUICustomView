//
//  KeyboardView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/10/24.
//

import SwiftUI

struct KeyboardView: View {
    
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Hello")
            
            SecureField("Password", text: $password)
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray)
                }
                .padding()
                .padding(.top, 70)
            Spacer()
            
            
            Button(action: {
                
            }, label: {
                Text("Next")
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .foregroundStyle(.white)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 8))
                    .padding()
            })
        }
    }
}

#Preview {
    KeyboardView()
}
