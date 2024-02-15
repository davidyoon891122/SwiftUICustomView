//
//  EditableListViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/15/24.
//

import Foundation

protocol EditableListViewModelProtocol: ObservableObject {
    
    var menus: [String] { get }
    
    func loadMenus()
    
    func onMove(source: IndexSet, destination: Int)
    func onDelete(indexSet: IndexSet)
    
}

final class EditableListViewModel {
    
    @Published var menus: [String] = []
    
}

extension EditableListViewModel: EditableListViewModelProtocol {
    
    func loadMenus() {
        print("LoadMenus")
        self.menus = ["My", "Binance", "Coinbase", "Upbit", "Bithumb"]
    }
    
    func onMove(source: IndexSet, destination: Int) {
        print("source: \(source), destionation: \(destination)")
        menus.move(fromOffsets: source, toOffset: destination)
        
    }
    
    func onDelete(indexSet: IndexSet) {
        menus.remove(atOffsets: indexSet)
    }
    
}
