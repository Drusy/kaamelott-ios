//
//  Character.swift
//  KaamelottSoundboard
//
//  Created by Drusy on 03/12/2019.
//  Copyright © 2019 Openium. All rights reserved.
//

import UIKit

enum Character: String, CaseIterable, Identifiable {
    case arthur = "Arthur"
    case guenievre = "Guenièvre"
    case merlin = "Merlin"
    case leodagan = "Léodagan"
    case perceval = "Perceval"
    case karadoc = "Karadoc"
    case lancelot = "Lancelot"
    case seli = "Dame Séli"

    var id: String {
        return rawValue
    }
    
    func image() -> UIImage? {
        switch self {
        case .arthur:
            return UIImage(named: "kaa-arthur")
        case .merlin:
            return UIImage(named: "kaa-merlin")
        case .seli:
            return UIImage(named: "kaa-dame-seli")
        case .guenievre:
            return UIImage(named: "kaa-guenievre")
        case .perceval:
            return UIImage(named: "kaa-perceval")
        case .leodagan:
            return UIImage(named: "kaa-leodagan")
        case .karadoc:
            return UIImage(named: "kaa-karadoc")
        case .lancelot:
            return UIImage(named: "kaa-lancelot")
        }
    }
}
