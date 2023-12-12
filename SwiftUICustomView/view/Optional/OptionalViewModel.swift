//
//  OptionalViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import Foundation

class OptionalViewModel: ObservableObject {
    @Published var accountModel: AccountModel?
    
    func requestChange() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.accountModel = .item
        }
    }
    
}

