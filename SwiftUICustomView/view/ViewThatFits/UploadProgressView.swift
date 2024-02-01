//
//  UploadProgressView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/31/24.
//

import SwiftUI

struct UploadProgressView: View {
    
    var uploadProgress: Double
    
    var body: some View {
        ViewThatFits(in: .horizontal) {
            HStack {
                Text("\(uploadProgress.formatted(.percent))")
                ProgressView(value: uploadProgress)
                    .frame(width: 100)
            }
            ProgressView(value: uploadProgress)
                .frame(width: 100)
            Text("\(uploadProgress.formatted(.percent))")
            
        }
    }
}

#Preview {
    UploadProgressView(uploadProgress: 0)
}
