//
//  CustomList.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/26/23.
//

import SwiftUI

struct CustomListData: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted: Bool = false
    var isDownloaded: Bool = false
    
    mutating func toggleIsCompleted() {
        isCompleted.toggle()
    }
    
    mutating func toggleIsDownloaded() {
        isDownloaded.toggle()
    }
}


struct CustomList: View {
    
    @State var customListData: [CustomListData] = [
        CustomListData(title: "One"),
        CustomListData(title: "Two"),
        CustomListData(title: "Three"),
        CustomListData(title: "Four"),
        CustomListData(title: "Five")
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(customListData.indices, id: \.self) { index in
                    Text(customListData[index].title)
                        .swipeActions(edge: .leading) {
                            Button {
                                customListData[index].toggleIsCompleted()
                            } label: {
                                Image(systemName: customListData[index].isCompleted ? "checkmark.circle.fill" : "checkmark")
                                    .resizable()
                            }
                            .tint(customListData[index].isCompleted ? .green : .secondary)
                            Button {
                                customListData[index].toggleIsDownloaded()
                            } label: {
                                Image(systemName: "square.and.arrow.down")
                                    .resizable()
                            }.tint(customListData[index].isDownloaded ? .blue : .secondary)
                        }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform:moveItems)
            }
            
            HStack {
                Spacer()
                EditButton()
                Button {
                    customListData.append(CustomListData(title: "New Item"))
                } label: {
                    Text("Add")
                }
            }.padding()
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        customListData.remove(atOffsets: offsets)
    }
    
    func moveItems(fromIndex: IndexSet, newIndex: Int) {
        customListData.move(fromOffsets: fromIndex, toOffset: newIndex)
    }
    
}

#Preview {
    CustomList()
}
