//
//  Extension+EnvironmentValues.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/24/24.
//

import SwiftUI

extension EnvironmentValues {
   
    var isLoading: Bool {
        get { self[LoadingKey.self] }
        set { self[LoadingKey.self] = newValue }
    }
   
}

struct LoadingKey: EnvironmentKey {
    static var defaultValue: Bool = false
}
