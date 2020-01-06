//
//  characterPaladin.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 06/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe du personnage paladin

class paladin: charactersTeam {
    override init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String, heroArmsPower: Int) {
        super.init(nameHero: " ", lifePoint: 100, actionPoint: 15, heroArms: "", heroArmsPower: 10)
         }
}
