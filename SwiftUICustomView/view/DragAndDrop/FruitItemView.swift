//
//  FruitItemView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct FruitItemView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
        }
        .padding(.vertical, 40)
        .background(.yellow)
        .clipShape(.rect(cornerRadius: 20))
    }
    
}

#Preview {
    FruitItemView(title: "Apple")
}
