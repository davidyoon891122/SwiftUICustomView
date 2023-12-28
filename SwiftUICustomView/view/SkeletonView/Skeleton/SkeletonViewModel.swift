//
//  SkeletonViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/28/23.
//

import Foundation

protocol SkeletonViewModelProtocol: ObservableObject {
    
    var skills: [String] { get }
    var isLoading: Bool { get }
    var error: Error? { get }
    
    func fetchData() async

}

@MainActor
class SkeletonViewModel {
    
    @Published private(set) var skills: [String] = []
    @Published private(set) var isLoading: Bool = false
    @Published private(set) var error: Error?
    
}

extension SkeletonViewModel: SkeletonViewModelProtocol {
    
    func fetchData() async {
        isLoading = true
        preparePlaceholderData()
        
        do {
            try await Task.sleep(nanoseconds: 2_0000_00_000)
            skills = ["iOS", "SwiftUI", "Combine", "Xcode", "Git", "Agile"]
            isLoading = false
        } catch {
            self.error = error
            isLoading = false
        }
    }
    
    func preparePlaceholderData() {
        for i in stride(from: 0, through: 100, by: 1) {
            skills.append("Row content\(i)")
        }
    }
    
}
