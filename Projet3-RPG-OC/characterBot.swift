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
    private var _lifePoint: Int
    private var _actionPoint: Int
    var heroArms: String
    
    var lifePoint: Int {
        get {
             return _lifePoint
        }
        set {
            _lifePoint = newValue
        }
     }
     
     var actionPoint: Int {
        get {
                return _actionPoint
        }
        set {
            _actionPoint = newValue
        }
    }
    
    init(nameHero: String, lifePoint: Int, actionPoint: Int, heroArms: String) {
        self.nameHero = nameHero
        self._lifePoint = lifePoint
        self._actionPoint = actionPoint
        self.heroArms = heroArms
    }
}