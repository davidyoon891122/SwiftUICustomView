//
//  PageControl.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/5/24.
//

import SwiftUI

struct PageControl: UIViewRepresentable {

    var totalPages: Int
    var currentPage: Int

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = totalPages
        control.currentPage = currentPage
        control.backgroundStyle = .prominent
        control.allowsContinuousInteraction = false

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.numberOfPages = totalPages
        uiView.currentPage = currentPage
    }

}

