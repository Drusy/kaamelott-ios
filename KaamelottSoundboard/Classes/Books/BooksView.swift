//
//  BooksView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Books")
                    .font(.title)
                Text("Browse the soundboard by books & episodes")
            }
            .navigationBarTitle("Livres")
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BooksView().colorScheme(.light)
            BooksView().colorScheme(.dark)
        }
    }
}
