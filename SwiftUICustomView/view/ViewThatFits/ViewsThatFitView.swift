//
//  ViewsThatFitView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/30/24.
//

import SwiftUI

struct ViewsThatFitView: View {
    
    var uploadProgress: Double
    
    var body: some View {
        VStack {
            UploadProgressView(uploadProgress: 0.75)
                .frame(maxWidth: 200)
            UploadProgressView(uploadProgress: 0.75)
                .frame(maxWidth: 100)
            UploadProgressView(uploadProgress: 0.75)
                .frame(maxWidth: 50)
        }
    }
}

#Preview {
    ViewsThatFitView(uploadProgress: 0)
}
