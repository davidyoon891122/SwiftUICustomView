//
//  AnimatableCustomFontModifier.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

struct AnimatableCustomFontModifier: ViewModifier, Animatable {
    
    var name: String
    var size: Double
    
    var animatableData: Double {
        get { size }
        set {
            size = newValue
        }
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: size))
    }
    
}

extension View {
    
    func animatableFont(name: String, size: Double) -> some View {
        self.modifier(AnimatableCustomFontModifier(name: name, size: size))
    }
    
}
