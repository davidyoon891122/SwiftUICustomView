//
//  AvatarListView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/18/24.
//

import SwiftUI

struct AvatarListView: View {
    
    let users: [UserModel] = UserModel.users
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(users) { userModel in
                DefaultAvatarView(user: userModel)
            }
        }
    }
}

#Preview {
    AvatarListView()
}
