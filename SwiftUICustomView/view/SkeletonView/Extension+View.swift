//
//  Extension+View.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/28/23.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func redacted(when show: Bool, reason: RedactionReasons = .placeholder) -> some View {
        redacted(reason: show ? reason : .invalidated)
    }
    
}
