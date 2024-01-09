//
//  CustomAlertView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/9/24.
//

import SwiftUI
import UIKit

struct CustomAlertView<Content>: View where Content: View {
    let content: Content
    let primaryButton: EndTickerAlertButton
    let secondButton: EndTickerAlertButton?
    
    init(content: () -> Content , primaryButton: () -> EndTickerAlertButton, secondButton: (() -> EndTickerAlertButton)? = nil) {
        self.content = content()
        self.primaryButton = primaryButton()
        self.secondButton = secondButton?()
    }
    
    var body: some View {
        ZStack{
            Color.black.opacity(0.3).ignoresSafeArea()
            
            content
                .padding(.bottom, 60)
                .frame(maxWidth:315, minHeight: 169)
                .overlay(
                    VStack(spacing:0){
                        if primaryButton.color == nil{
                            Divider()
                        }
                        
                        HStack(){
                            primaryButton
                            if secondButton != nil{
                                Divider()
                                secondButton
                            }
                        }
                        .frame(height:60)
                        .font(.system(size: 16,weight: .bold))
                    }
                    , alignment: .bottom)
                .background(
                    Color.white
                ).cornerRadius(10)
        }
    }
}

extension View {
    func alert<Content>(isPresented:Binding<Bool>, alert: () -> CustomAlertView<Content>) -> some View where Content: View{
        let keyWindow = UIApplication.shared.connectedScenes.filter ({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene}).compactMap {$0}.first?.windows.filter { $0.isKeyWindow }.first!

        let vc = UIHostingController(rootView: alert())
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        vc.view.backgroundColor = .clear
        vc.definesPresentationContext = true
        
        return self.onChange(of: isPresented.wrappedValue, perform: {
            if $0{
                keyWindow?.rootViewController?.present(vc,animated: true)
            }
            else{
                keyWindow?.rootViewController?.dismiss(animated: true)
            }
        })
    }

}
