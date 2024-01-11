//
//  ShapeStyleExample.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/11/24.
//

import SwiftUI

struct ShapeStyleExample: ShapeStyle {
    
    func resolve(in environment: EnvironmentValues) -> some ShapeStyle {
        if environment.colorScheme == .light {
            return Color.purple
        } else {
            return Color.yellow
        }
    }
    
}

extension ShapeStyle where Self == ShapeStyleExample {
    
    static var shapeStyleExample: Self {
        ShapeStyleExample()
    }
    
}
