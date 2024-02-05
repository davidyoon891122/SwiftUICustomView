//
//  AnimatableSystemFontModifier.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct AnimatableSystemFontModifier: ViewModifier, Animatable {
    
    var size: Double
    var weight: Font.Weight
    var design: Font.Design
    
    var animatableData: Double {
        get { size }
        set {
            size = newValue
        }
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
    
}

extension View {
    
    func animatableSystemFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View {
        self.modifier(AnimatableSystemFontModifier(size: size, weight: weight, design: design))
    }
    
}

