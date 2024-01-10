//
//  Extension+VerticalAlignment.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/10/24.
//

import SwiftUI

extension VerticalAlignment {
    private enum CardViewAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let cardViewAlignment = VerticalAlignment(CardViewAlignment.self)
}
