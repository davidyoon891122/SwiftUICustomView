//
//  DefaultAvatarView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/18/24.
//

import SwiftUI

struct DefaultAvatarView: View {
    
    var user: UserModel
    
    var body: some View {
        HStack {
            let name = String(user.fullName[user.fullName.startIndex]) +
            String(user.fullName.split(separator: " ")[1][user.fullName.split(separator: " ")[1].startIndex])
            
            ZStack {
                Circle()
                    .frame(width: 50, height: 50)
                Text(name)
                    .foregroundStyle(.white)
            }
            Spacer()
                .frame(width: 12)
            Text(user.fullName)
            
        }
    }
    
}

#Preview {
    DefaultAvatarView(user: .users[0])
}
