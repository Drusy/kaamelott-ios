//
//  CharactersView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI
import WaterfallGrid

struct CharactersView: View {
    
    @State private var characters: [Character] = Character.allCases
    
    var body: some View {
        NavigationView {
            WaterfallGrid(characters) { character in
                CharacterView(character: character)
            }
            .gridStyle(
                spacing: 8,
                padding: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
            )
            .navigationBarTitle("Personnages")
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharactersView()
                .colorScheme(.light)
                .previewDisplayName("Light")
            CharactersView()
                .colorScheme(.dark)
                .previewDisplayName("Light")
        }
    }
}
