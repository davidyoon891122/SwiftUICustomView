//
//  DragAndDropListView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/19/24.
//

import SwiftUI

struct DragAndDropListView: View {
    
    @State private var draggedFruit: String?
    @State private var fruits: [String] = [
        "APPLE",
        "GRAPES",
        "BANANA",
        "WATERMELON",
        "PEACH",
        "KIWI",
        "DRAGON FRUIT"
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Spacer()
                    .frame(height: 40)
                
                ForEach(fruits, id: \.self) { fruit in
                    FruitItemView(title: fruit)
                        .onDrag({
                            self.draggedFruit = fruit
                            return NSItemProvider()
                        })
                        .onDrop(of: [.text], delegate: DropViewDelegate(destinationItem: fruit, fruits: $fruits, draggedItem: $draggedFruit))
                }
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
        .background(.black)
    }
    
}

#Preview {
    DragAndDropListView()
}

struct DropViewDelegate: DropDelegate {
    
    let destinationItem: String
    @Binding var fruits: [String]
    @Binding var draggedItem: String?
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
    func performDrop(info: DropInfo) -> Bool {
        draggedItem = nil
        return true
    }
    
    func dropEntered(info: DropInfo) {
        if let draggedItem {
            let fromIndex = fruits.firstIndex(of: draggedItem)
            if let fromIndex {
                let toIndex = fruits.firstIndex(of: destinationItem)
                if let toIndex, fromIndex != toIndex {
                    withAnimation {
                        self.fruits.move(fromOffsets: IndexSet(integer: fromIndex), toOffset: (toIndex > fromIndex ? (toIndex + 1) : toIndex))
                    }
                }
            }
        }
    }
    
}
