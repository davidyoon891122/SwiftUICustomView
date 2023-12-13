//
//  ModernButton2.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/13.
//

import SwiftUI

struct ModernButton2: View {
    var body: some View {
        Button(action: {}, label: {
            ZStack(alignment: .leading) {
                Text("Modern Button")
                    .foregroundStyle(.black)
                    .font(.system(size: 16, weight: .semibold))
                    .padding(12)
                    .padding(.leading, 30)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(.black)
                    }
                
                Image(systemName: "house.fill")
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(35)
                    .offset(x: -40)
            }
        })
    }
}

#Preview {
    ModernButton2()
}
