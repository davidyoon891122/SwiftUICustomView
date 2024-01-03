//
//  PickerContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/3/24.
//

import SwiftUI

struct Book: Identifiable, Hashable {
    var id: UUID { UUID() }
    var title: String
    var author: String
}

struct PickerContentView: View {
    
    @State var books = [
        Book(title: "Atomic Habits", author: "James Clear"),
        Book(title: "Start With Why", author: "Simon Sinek"),
        Book(title: "Think Like A Monk", author: "Jay Shetty"),
        Book(title: "Limitless", author: "Jim Kwik")
    ]
    
    @State var selectedBook: Book?
    
    var body: some View {
        VStack {
            SegmentedPickerView(selection: $selectedBook, items: $books, selectionColor: .cyan) { book in
                Text(book.title)
            }
            if let selectedBook {
                HStack {
                    Text("\(selectedBook.title) by ")
                    +
                    Text("\(selectedBook.author)")
                        .bold()
                        .foregroundStyle(.cyan)
                }
                .padding()
            }
        }
    }
}

#Preview {
    PickerContentView()
}
