//
//  CharacterView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    let character: Character
    let cornerRadius: CGFloat = 16
    
    var body: some View {
        VStack() {
            Image(uiImage: character.image() ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
        }
        .cornerRadius(cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.secondary.opacity(0.7), lineWidth: 1)
        )
        .shadow(radius: 5)
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterView(character: Character.arthur)
                .colorScheme(.light)
                .previewDisplayName("Light")
            CharacterView(character: Character.arthur)
                .colorScheme(.dark)
                .previewDisplayName("Dark")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
