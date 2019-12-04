//
//  RandomCaptionView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct LoadingRandomCaptionView: View {
    @State var isLoading: Bool = true

    var body: some View {
        LoadingView(isShowing: $isLoading) {
            RandomCaptionView(reloadAction: self.refresh)
        }
        .onAppear(perform: refresh)
    }
    
    // MARK: -
    
    func refresh() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isLoading = false
        }
    }
}

struct RandomCaptionView: View {
    
    var reloadAction: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Citation aléatoire")
                    .foregroundColor(Color.primary)
                    .font(Font.system(size: 15, weight: .semibold, design: .default))
                    .colorInvert()
                Spacer()
                Button(
                    action: reloadAction,
                    label: {
                        Image(systemName: "gobackward")
                            .accentColor(.orange)
                })
            }
            Divider().colorInvert()
            VStack(alignment: .leading, spacing: 8) {
                Text("J'ai toujours dit que je supportais pas les jupes; mais c'est l'uniforme réglementaire, j'y suis pour rien !")
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.primary)
                    .font(Font.system(size: 13, weight: .regular, design: .default))
                    .colorInvert()
                HStack() {
                    Spacer()
                    Text("Caius Camillus")
                        .foregroundColor(Color.primary)
                        .font(Font.system(size: 13, weight: .thin, design: .default))
                        .colorInvert()
                }
            }
        }
        .padding()
        .background(Color.primary)
        .cornerRadius(16)
        .clipped()
    }
}

struct RandomCaptionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RandomCaptionView(reloadAction: {}).colorScheme(.light)
            RandomCaptionView(reloadAction: {}).colorScheme(.dark)
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
