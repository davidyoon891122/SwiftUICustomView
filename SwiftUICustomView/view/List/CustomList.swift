//
//  CustomList.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 12/26/23.
//

import SwiftUI

struct CustomList: View {
    
    @ObservedObject var viewModel = FakeWebService()
    @State private var currentPageNumber = 0
    
    var body: some View {
        VStack {
            Group {
                if viewModel.customListData.isEmpty {
                    ContentUnavailableView("Looks like the data from the list is currently not available", systemImage: "list.bullet")
                } else {
                    List {
                        ForEach(viewModel.customListData.indices, id: \.self) { index in
                            Text(viewModel.customListData[index].title)
                                .onAppear {
                                    if viewModel.shouldFetchNextPage(index) && !viewModel.customListData.isEmpty {
                                        currentPageNumber += 1
                                        viewModel.fetchData(page: currentPageNumber)
                                    }
                                }
                                .swipeActions(edge: .leading) {
                                    Button {
                                        viewModel.customListData[index].toggleIsCompleted()
                                    } label: {
                                        Image(systemName: viewModel.customListData[index].isCompleted ? "checkmark.circle.fill" : "checkmark")
                                            .resizable()
                                    }.tint(viewModel.customListData[index].isCompleted ? .green : .secondary)
                                    
                                    Button {
                                        viewModel.customListData[index].toggleIsDownloaded()
                                    } label: {
                                        Image(systemName: "square.and.arrow.down")
                                            .resizable()
                                    }.tint(viewModel.customListData[index].isDownloaded ? .blue : .secondary)
                                }
                        }
                        .onDelete(perform: deleteItems)
                        .onMove(perform: moveItems)
                    }
                }
            }
            .onAppear {
                if viewModel.customListData.isEmpty {
                    currentPageNumber += 1
                    viewModel.fetchData(page: currentPageNumber)
                }
            }
            
            
            HStack {
                Spacer()
                EditButton()
                Button {
                    viewModel.customListData.append(CustomListData(title: "New Item"))
                } label: {
                    Text("Add")
                }
            }.padding()
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        viewModel.customListData.remove(atOffsets: offsets)
    }
    
    func moveItems(fromIndex: IndexSet, newIndex: Int) {
        viewModel.customListData.move(fromOffsets: fromIndex, toOffset: newIndex)
    }
    
}

#Preview {
    CustomList()
}
