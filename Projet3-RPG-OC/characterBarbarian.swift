//
//  characterBarbarian.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 06/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe du personnage barbare

class barbarian: charactersTeam {
    override init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String, heroArmsPower: Int) {
        super.init(nameHero: "", lifePoint: 100, actionPoint: 20, heroArms: "", heroArmsPower: 10)
    }
    
        
        func fight() {
            barbarian(actionPoint: Int) += barbarian(heroArmsPower: Int)
            charactersBot.barbarianBot(actionPoint: Int) += charactersBot.barbarianBot(heroArmsPower: Int)
            barbarian(actionPoint: Int) -= barbarianBot(actionPoint: Int)
            
            
        }
}
