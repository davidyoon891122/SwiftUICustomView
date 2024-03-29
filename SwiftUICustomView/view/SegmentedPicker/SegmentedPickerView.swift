//
//  SegmentedPickerView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/3/24.
//

import SwiftUI

struct SegmentedPickerView<SelectionValue, Content>: View where SelectionValue: Hashable, Content: View {
    
    @Binding var selection: SelectionValue?
    
    @Binding var items: [SelectionValue]
    
    private var selectionColor: Color = .blue
    
    private var content: (SelectionValue) -> Content
    
    @Namespace private var pickerTransition
    
    init(
        selection: Binding<SelectionValue?>,
        items: Binding<[SelectionValue]>,
        selectionColor: Color = .blue,
        @ViewBuilder content: @escaping (SelectionValue) -> Content
    ) {
        _selection = selection
        _items = items
        self.selectionColor = selectionColor
        self.content = content
    }
    
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 6) {
                    ForEach(items, id: \.self) { item in
                        let selected = selection == item
                        ZStack {
                            Capsule()
                                .foregroundStyle(selected ? selectionColor : .clear)
                                .animationEffect(isSelected: selected, id: "picker", in: pickerTransition)
                            
                            content(item)
                                .id(item)
                                .pickerTextStyle(isSelected: selected, selectionColor: selectionColor)
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                selection = item
                            }
                        }
                        .onChange(of: selection) {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                proxy.scrollTo(selection)
                            }
                        }
                    }
                    .onAppear {
                        if selection == nil, let first = items.first {
                            selection = first
                        }
                    }
                }
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            }
            
        }
    }
}
