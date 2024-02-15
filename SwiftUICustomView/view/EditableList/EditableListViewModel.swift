//
//  EditableListViewModel.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2/15/24.
//

import Foundation

protocol EditableListViewModelProtocol: ObservableObject {
    
    var menus: [String] { get }
    var editableMenus: [String] { get set }
    
    func loadMenus()
    
    func onMove(source: IndexSet, destination: Int)
    func onDelete(indexSet: IndexSet)
    func commitChanges()
    
}

final class EditableListViewModel {
    
    @Published var menus: [String] = []
    @Published var editableMenus: [String] = []
    
}

extension EditableListViewModel: EditableListViewModelProtocol {
    
    func loadMenus() {
        print("LoadMenus")
        self.menus = ["My", "Binance", "Coinbase", "Upbit", "Bithumb"]
        self.editableMenus = self.menus
    }
    
    func onMove(source: IndexSet, destination: Int) {
        print("source: \(source), destionation: \(destination)")
        menus.move(fromOffsets: source, toOffset: destination)
        self.editableMenus = menus
        
    }
    
    func onDelete(indexSet: IndexSet) {
        menus.remove(atOffsets: indexSet)
        self.editableMenus = menus
    }
    
    func commitChanges() {
        self.menus = self.editableMenus
    }
    
}
