//
//  FakeWebService.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/26/23.
//

import Foundation

@MainActor
class FakeWebService: ObservableObject {
    
    @Published var customListData: [CustomListData] = []
    
    let newListData = [
        CustomListData(title: "1"), CustomListData(title: "2"), CustomListData(title: "3"), CustomListData(title: "4"), CustomListData(title: "5"),
        CustomListData(title: "6"), CustomListData(title: "7"), CustomListData(title: "8"), CustomListData(title: "9"), CustomListData(title: "10"),
        CustomListData(title: "11"), CustomListData(title: "12"), CustomListData(title: "13"), CustomListData(title: "14"), CustomListData(title: "15"),
        CustomListData(title: "16"), CustomListData(title: "17"), CustomListData(title: "18"), CustomListData(title: "19"), CustomListData(title: "20")
    ]
    
}

extension FakeWebService {
    
    func fetchData(page: Int) {
        Task {
            try await Task.sleep(nanoseconds:1_000_000_000)
            customListData.append(contentsOf: newListData)
        }
    }
    
    func shouldFetchNextPage(_ index: Int) -> Bool {
        let fetchDataWhenAreXFromEndOfArray = 8
        
        return index == customListData.count - fetchDataWhenAreXFromEndOfArray
    }
    
}
