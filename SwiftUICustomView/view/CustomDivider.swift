//
//  CustomDivider.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import SwiftUI

enum DividerDirection {
    case horizontal
    case vertical
}

struct CustomDivider: View {
    let color: Color
    let size: CGFloat
    let direction: DividerDirection
    
    init(
        color: Color = .gray,
        size: CGFloat = 1.0,
        direction: DividerDirection = .horizontal
    ) {
        self.color = color
        self.size = size
        self.direction = direction
    }
    
    var body: some View {
        switch direction {
        case .horizontal:
            color
                .frame(height: size)
        case .vertical:
            color
                .frame(width: size)
        }
    }
}

struct CustomDivider_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            CustomDivider(color: .gray, size: 1, direction: .horizontal)
            
            CustomDivider(color: .gray, size: 1, direction: .vertical)
        }
    }
}

