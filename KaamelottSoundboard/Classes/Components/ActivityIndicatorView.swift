//
//  ActivityIndicatorView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool

    let style: UIActivityIndicatorView.Style
    var configuration = { (indicator: UIActivityIndicatorView) in
        
    }

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        configuration(uiView)
    }
}

extension View where Self == ActivityIndicatorView {
    func configure(_ configuration: @escaping (UIActivityIndicatorView) -> Void) -> Self {
        Self.init(isAnimating: self.$isAnimating, style: self.style, configuration: configuration)
    }
}

struct ActivityIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView(isAnimating: .constant(true), style: .medium)
    }
}
