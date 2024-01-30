//
//  BottomSheet.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/29/24.
//

import SwiftUI

struct BottomSheet<PresentingView: View>: ViewModifier {

    @Binding var isPresented: Bool
    
    @ViewBuilder var presentingView: PresentingView

    func body(content: Content) -> some View {
        ZStack {
            content

            ZStack(alignment: .bottom) {
                if isPresented {
                    Color.black
                        .opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture {
                            isPresented.toggle()
                        }
                    presentingView
                        .padding(.bottom, 42)
                        .transition(.move(edge: .bottom))
                        .background(
                            Color(.white)
                        )
                        .cornerRadius(16, corners: [.topLeft, .topRight])
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            .animation(.easeInOut, value: isPresented)
        }
    }

}

extension View {

    func bottomSheet<PresentingView: View>(isPresented: Binding<Bool>, @ViewBuilder presentingView: @escaping () -> PresentingView) -> some View {
        modifier(BottomSheet(isPresented: isPresented, presentingView: presentingView))
    }

}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorners(radius: radius, corners: corners) )
    }
}

struct RoundedCorners: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
