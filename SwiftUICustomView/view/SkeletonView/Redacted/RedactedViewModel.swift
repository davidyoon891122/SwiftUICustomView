//
//  RedactedViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/28/23.
//

import Foundation

struct ProfileModel {
    let image: String
    let name: String
    let mail: String
    let phone: String
    let blog: String
}

extension ProfileModel {
    static let item: Self = .init(image: "person.fill", name: "Davidyoon", mail: "qqpo12@naver.com", phone: "010-5136-3842", blog: "davidyoon-blog.vercel.app")
    
    static let defaultValue: Self = .init(image: "", name: "------", mail: "----@------.---", phone: "-------------", blog: "------------------")
}

protocol RedactedViewModelProtocol: ObservableObject {
    
    var profileModel: ProfileModel { get set }
    var isLoading: Bool { get set }
    func requestProfile() async
    
}


class RedactedViewModel {
    
    @Published var profileModel: ProfileModel
    @Published var isLoading: Bool = false
    
    init(profileModel: ProfileModel = .defaultValue) {
        self.profileModel = profileModel
    }
    
}

extension RedactedViewModel: RedactedViewModelProtocol {
    
    func requestProfile() async {
        isLoading = true
        do {
            try await Task.sleep(for: .seconds(5))
            profileModel = .item
            isLoading = false
            
        } catch {
            print(error)
            isLoading = false
        }
    }
    
}
