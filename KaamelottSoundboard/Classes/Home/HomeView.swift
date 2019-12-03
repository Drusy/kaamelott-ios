//
//  HomeView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI
import WaterfallGrid

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Home")
                    .font(.title)
                Text("Browse all the soundboard")
            }
            .navigationBarTitle("Accueil")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView().colorScheme(.light)
            HomeView().colorScheme(.dark)
        }
    }
}
