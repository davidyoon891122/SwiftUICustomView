//
//  PhotoPickerView.swift
//  SwiftUICustomView
//
//  Created by Jiwon Yoon on 2/1/24.
//

import SwiftUI
import PhotosUI

struct PhotoPickerView: View {

    @State private var selectedPhotoItem: PhotosPickerItem? = nil
    @State private var image: UIImage? = nil

    var body: some View {
        VStack {
            if let image = image {
                VStack {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                    Spacer()
                }
            } else {
                Spacer()
            }

            PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                Text("Select Photo")
            }
            .photosPickerStyle(.inline)
//            .photosPickerDisabledCapabilities(.selectionActions)
//            .photosPickerAccessoryVisibility(.hidden)
            .frame(height: 400)
            .onChange(of: selectedPhotoItem) { oldValue, newValue in
                Task {
                    guard let imageData = try await selectedPhotoItem?.loadTransferable(type: Data.self) else { return }
                    guard let uiImage = UIImage(data: imageData) else { return }
                    image = uiImage
                }
            }
            .ignoresSafeArea(edges: [.bottom])
        }
    }
}

#Preview {
    PhotoPickerView()
}
