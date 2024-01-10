//
//  AlertTestView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/9/24.
//

import SwiftUI

struct AlertTestView: View {
    
    @State var isShowAlert: Bool = false
    @State var moveNextView: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    destination: AlertNextView(),
                    isActive: $moveNextView
                ) {
                    EmptyView()
                }
                VStack {
                    Button(action: {
                        isShowAlert.toggle()
                    }, label: {
                        Text("Show Alert")
                            .frame(maxWidth: 150, minHeight: 50)
                            .background(.gray)
                            .padding(.horizontal, 20)
                    })
                }
                
                if isShowAlert {
                    CustomAlertView(content: {
                        VStack {
                            Text("Hell")
                        }
                    }) {
                        EndTickerAlertButton(action: {
                            print("primary")
                            isShowAlert.toggle()
                            moveNextView.toggle()
                        }, title: Text("Primary"), color: .gray)
                    }
                }
            }
        }
    }
}

#Preview {
    AlertTestView()
}
