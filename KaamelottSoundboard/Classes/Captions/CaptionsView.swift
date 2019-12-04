//
//  CaptionsView.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import SwiftUI

struct CaptionsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                LoadingRandomCaptionView()
                Spacer()
            }
            .padding()
            .navigationBarTitle("Citations")
        }
    }
}

struct CaptionsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CaptionsView().colorScheme(.light)
            CaptionsView().colorScheme(.dark)
        }
    }
}

