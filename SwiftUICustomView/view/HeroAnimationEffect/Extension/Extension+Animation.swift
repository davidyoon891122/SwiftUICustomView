//
//  Extension+Animation.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/5/24.
//

import SwiftUI

extension Animation {
    
    static var hero: Animation {
        .interactiveSpring(response: 0.6, dampingFraction: 0.85, blendDuration: 0.25)
    }
    
}
