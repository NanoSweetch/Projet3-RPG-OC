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
    var health: Int
  
    init(nameHero: String, lifePoint: Int, actionPoint: Int, health: Int, heroArms: String, heroArmsPower: Int) {
        self.health = health
        super.init(nameHero: " ", lifePoint: 100, actionPoint: 5, heroArms: "", heroArmsPower: 10)
         }
}
