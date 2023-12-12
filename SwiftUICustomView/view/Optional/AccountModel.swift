//
//  AccountModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import Foundation

struct AccountModel {
    let accountNumber: String
}

extension AccountModel {
    static let item: AccountModel = .init(accountNumber: "63123450-01")
}
