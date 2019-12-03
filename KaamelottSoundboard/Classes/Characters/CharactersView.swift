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
    
    enum Mode {
        case list
        case grid
        
        mutating func switchMode() {
            switch self {
            case .list:
                self = .grid
            case .grid:
                self = .list
            }
        }
        
        func switchView() -> some View {
            switch self {
            case .list:
                return Image(systemName: "rectangle.3.offgrid")
            case .grid:
                return Image(systemName: "list.dash")
            }
        }
        
        func columns() -> Int {
            switch self {
            case .list:
                return 1
            case .grid:
                return 2
            }
        }
    }
    
    @State private var characters: [Character] = Character.allCases
    @State private var mode: Mode = .grid
    
    var body: some View {
        NavigationView {
            WaterfallGrid(characters) { character in
                CharacterView(character: character)
            }
            .gridStyle(
                columns: mode.columns(),
                spacing: 8,
                padding: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
            )
            .navigationBarTitle("Personnages")
            .navigationBarItems(trailing:
                Button(
                    action: { self.mode.switchMode() },
                    label: { self.mode.switchView() }
                )
            )
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
