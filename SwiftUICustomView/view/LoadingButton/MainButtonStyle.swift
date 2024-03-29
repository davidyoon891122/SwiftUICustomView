//
//  MainButtonStyle.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/24/24.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        MainButton(configuration: configuration)
    }
    
}

extension ButtonStyle where Self == MainButtonStyle {
    
    static var main: MainButtonStyle {
        MainButtonStyle()
    }
    
}

extension Button {
    func loading(_ isLoading: Bool) -> some View {
        self
            .environment(\.isLoading, isLoading)
    }
}

fileprivate struct MainButton: View {
    
    @Namespace private var animation
    
    @Environment(\.isEnabled) private var isEnabled: Bool
    @Environment(\.isLoading) private var isLoading: Bool
    
    let configuration: ButtonStyleConfiguration
    
    var body: some View {
        Group {
            if isLoading {
                ZStack {
                    Circle()
                        .fill(.blue)
                        .frame(height: 60)
                    
                    ProgressView()
                        .tint(.white)
                }
                .matchedGeometryEffect(id: "button", in: animation)
            } else {
                configuration
                    .label
                    .font(.body)
                    .foregroundStyle(isEnabled ? .white : .secondary.opacity(0.3))
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(isEnabled ? .blue : .gray.opacity(0.5))
                    )
            }
        }
    }
}
