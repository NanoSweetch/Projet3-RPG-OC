//
//  characterBotPaladin.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 06/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe du personnage paladin

class paladinBot: charactersBot {
    override init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String) {
        super.init(nameHero: "Rasdir", lifePoint: 100, actionPoint: 20, heroArms: "")
    }
}
