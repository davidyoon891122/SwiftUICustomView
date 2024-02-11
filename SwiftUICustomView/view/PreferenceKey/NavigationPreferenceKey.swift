//
//  NavigationPreferenceKey.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/6/24.
//

import SwiftUI

struct NavigationBarTitlePreferenceKey: PreferenceKey {
    
    static var defaultValue: String = ""

    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }

}
