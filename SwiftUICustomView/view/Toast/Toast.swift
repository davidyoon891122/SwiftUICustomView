//
//  Toast.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 1/28/24.
//

import SwiftUI

enum ToastStyle {
    case error
    case warning
    case success
    case info
}

extension ToastStyle {

    var themeColor: Color {
        switch self {
        case .error:
            return .red
        case .warning:
            return .orange
        case .success:
            return .blue
        case .info:
            return .green
        }
    }

    var iconFileName: String {
        switch self {
        case .error:
            return "info.circle.fill"
        case .warning:
            return "exclamationmark.triangle.fill"
        case .success:
            return "checkmark.circle.fill"
        case .info:
            return "xmark.circle.fill"
        }
    }


}

struct Toast: Equatable {

    var style: ToastStyle
    var message: String
    var duration: Double = 3
    var width: Double = .infinity

}


