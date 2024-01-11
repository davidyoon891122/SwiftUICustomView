//
//  ShapeStyleView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI

struct ShapeStyleView: View {
    
    var body: some View {
        Text("Hello, World")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.shapeStyleExample)
    }
    
}

#Preview {
    ShapeStyleView()
}
