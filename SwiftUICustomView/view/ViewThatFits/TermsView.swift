//
//  TermsView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI

struct TermsView: View {
    
    let terms = String(repeating: "abcde", count: 100)
    
    var body: some View {
        ViewThatFits(in: .vertical) {
            Text(terms)
            
            ScrollView {
                Text(terms)
            }
        }
    }
}

#Preview {
    TermsView()
}
