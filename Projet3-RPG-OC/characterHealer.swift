//
//  characterHealer.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 06/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe du personnage soigneur

class healer: charactersTeam {
    private var _health: Int
    
    var health: Int {
        get {
            return _health
        }
        set {
            _health = newValue
        }
    }
    
    init(nameHero: String, lifePoint: Int, actionPoint: Int, health: Int, heroArms: String) {
        self._health = health
        super.init(nameHero: " ", lifePoint: 100, actionPoint: 5, heroArms: "")
         }
}
