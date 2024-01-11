//
//  ContentView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        KeyboardView()
//        VStack {
//            CarouselView(itemHeight: 500, views: [
//                AnyView(imageView(name: "sample")),
//                AnyView(imageView(name: "sample2")),
//                AnyView(imageView(name: "sample")),
//                AnyView(imageView(name: "sample2")),
//                AnyView(imageView(name: "sample")),
//                AnyView(imageView(name: "sample2")),
//                AnyView(imageView(name: "sample")),
//                AnyView(imageView(name: "sample2")),
//            ])
//        }
//        .padding()
    }
    
    func imageView(name: String) -> some View {
        Image(name)
            .aspectRatio(contentMode: .fill)
    }
}

#Preview {
    ContentView()
}
