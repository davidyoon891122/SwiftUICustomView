//
//  ModernButton.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct ModernButton: View {
    var body: some View {
        Button(action: {}, label: {
            ZStack(alignment: .leading) {
                Text("Modern Button")
                    .foregroundStyle(.black)
                    .font(.system(size: 16, weight: .semibold))
                    .padding()
                    .padding(.leading, 52)
                    .overlay {
                        RoundedRectangle(cornerRadius: 52)
                            .stroke(.black)
                    }
                
                Image(systemName: "house.fill")
                    .frame(width: 52, height: 52)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(26)
                    .offset(x: -1)
            }
        })
    }
}

#Preview {
    ModernButton()
}
