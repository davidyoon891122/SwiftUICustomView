//
//  MaterialView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/15/24.
//

import SwiftUI

struct MaterialView: View {
    var body: some View {
        VStack {
            Text("Ultra thin Material")
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
            
            Text("Thin Material")
                .font(.title)
                .padding()
                .background(.thinMaterial)
            
            Text("Regular Material")
                .font(.title)
                .padding()
                .background(.regularMaterial)
            
            Text("Thick Material")
                .font(.title)
                .padding()
                .background(.thickMaterial)
            
            Text("Ultra thick Material")
                .font(.title)
                .padding()
                .background(.ultraThickMaterial)
            
            Text("Bar Material")
                .font(.title)
                .padding()
                .background(.bar)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    MaterialView()
}
