//
//  AlignmentCardView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/10/24.
//

import SwiftUI

struct AlignmentCardView: View {
    var body: some View {
        HStack(alignment: .cardViewAlignment) {
            VStack {
                Text("Title:")
                    .alignmentGuide(.cardViewAlignment, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("My Title")
                    .alignmentGuide(.cardViewAlignment, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                Text("My Content")
                    .font(.largeTitle)
            }
        }
        .padding()
    }
}

#Preview {
    AlignmentCardView()
        .border(.gray)
}
