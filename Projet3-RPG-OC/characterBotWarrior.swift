//
//  characterBotWarrior.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 06/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Clase du personnage guerrier

class warriorBot: charactersBot {
    override init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String) {
        super.init(nameHero: "Dirran", lifePoint: 100, actionPoint: 15, heroArms: "")
    }
}
