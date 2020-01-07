//
//  charactersBot.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 28/12/2019.
//  Copyright © 2019 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe inital des personnages de l'équipe de l'ordinateur

class charactersBot {
    let nameHero: String
    var lifePoint: Int
    var actionPoint: Int
    var heroArms: String
    var heroArmsPower: Int
    
    
    init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String, heroArmsPower: Int) {
        self.nameHero = nameHero
        self.lifePoint = lifePoint
        self.actionPoint = actionPoint
        self.heroArms = heroArms
        self.heroArmsPower = heroArmsPower
    }
    
}

