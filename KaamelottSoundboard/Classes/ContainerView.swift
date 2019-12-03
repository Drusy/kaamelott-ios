//
//  ContainerView.swift
//  Kaamelott Soundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct ContainerView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName: "bolt\(selection == 0 ? ".fill" : "")")
                    Text("Accueil")
                }
                .tag(0)
            CharactersView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2\(selection == 1 ? ".fill" : "")")
                        Text("Personnages")
                    }
                }
                .tag(1)
            BooksView()
                .tabItem {
                    VStack {
                        Image(systemName: "book\(selection == 2 ? ".fill" : "")")
                        Text("Livres")
                    }
                }
                .tag(2)
            CaptionsView()
                .tabItem {
                    VStack {
                        Image(systemName: "captions.bubble\(selection == 3 ? ".fill" : "")")
                        Text("Citations")
                    }
                }
                .tag(3)
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContainerView().colorScheme(.light)
            ContainerView().colorScheme(.dark)
        }
    }
}
