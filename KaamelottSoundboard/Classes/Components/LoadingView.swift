//
//  LoadingView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct LoadingView<Content>: View where Content: View {
    @Binding var isShowing: Bool
    
    var content: () -> Content
    var animation: Animation {
        return Animation.easeIn(duration: 0.3)
    }
    
    var body: some View {
        self.content()
            .disabled(self.isShowing)
            .blur(radius: self.isShowing ? 3 : 0)
            .animation(animation)
//            .opacity(self.isShowing ? 0.4 : 1)
//            .animation(animation)
            .overlay(
                ActivityIndicatorView(isAnimating: .constant(true), style: .medium)
                    .configure {
                        $0.color = .orange
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//                    .background(Color.primary.colorInvert().opacity(0.8))
                    .accentColor(.orange)
                    .cornerRadius(16)
                    .opacity(self.isShowing ? 1 : 0)
                    .animation(animation)
            )
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoadingView(isShowing: .constant(true)) {
                testContent
            }.colorScheme(.light)
            LoadingView(isShowing: .constant(false)) {
                testContent
            }.colorScheme(.light)
            LoadingView(isShowing: .constant(true)) {
                testContent
            }.colorScheme(.dark)
            LoadingView(isShowing: .constant(false)) {
                testContent
            }.colorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
    
    static var testContent: some View {
        RandomCaptionView(reloadAction: {})
    }
}
