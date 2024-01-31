//
//  TextViewThatFitsView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI

struct TextViewThatFitsView: View {
    var body: some View {
        ViewThatFits {
            HStack {
                Text("The rain")
                Text("in Spain")
                Text("falls mainly")
                Text("on the Spaniards")
            }
            
            VStack {
                Text("The rain")
                Text("in Spain")
                Text("falls mainly")
                Text("on the Spaniards")
            }
        }
        .font(.title)
    }
}

#Preview {
    TextViewThatFitsView()
}
