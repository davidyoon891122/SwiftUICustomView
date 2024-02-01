//
//  OptionsView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI

struct OptionsView: View {
    var body: some View {
        Button("Log in") {
            
        }
        .buttonStyle(.borderedProminent)
        
        Button("Create Account") {
            
        }
        .buttonStyle(.bordered)
        
        Button("Settings") {
            
        }
        .buttonStyle(.bordered)
        
        Spacer()
            .frame(width: 50, height: 50)
        
        Button("Need Help?") {
            
        }
    }
}

#Preview {
    ViewThatFits {
        HStack(content: {
            OptionsView()
        })
        
        VStack(content: {
            OptionsView()
        })
    }
}
