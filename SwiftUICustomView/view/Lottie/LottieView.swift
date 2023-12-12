//
//  LottieView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 2023/12/11.
//

import SwiftUI
import SnapKit
import Lottie

struct LottieView: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> some UIView {
        let view = UIView()
        
        let animationView = LottieAnimationView(name: name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.backgroundBehavior = .pauseAndRestore
        
        view.addSubview(animationView)
        
        animationView.snp.makeConstraints {
            $0.height.width.equalTo(view)
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct LottieView_Preview: PreviewProvider {
    static var previews: some View {
        LottieView(name: "free", loopMode: .loop)
    }
}
