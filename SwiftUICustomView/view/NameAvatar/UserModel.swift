//
//  UserModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/18/24.
//

import Foundation

struct UserModel: Identifiable {
    
    let id = UUID()
    let fullName: String
    
}

extension UserModel {
    
    static let users: [Self] = [
        .init(fullName: "Abel Thomas"),
        .init(fullName: "King Farley"),
        .init(fullName: "Amiah Hurley"),
        .init(fullName: "Thomas Lloyd"),
    ]
    
}


extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}
