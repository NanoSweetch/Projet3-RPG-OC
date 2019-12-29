//
//  characters.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 28/12/2019.
//  Copyright © 2019 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe inital des personnages de l'équipe du joueur

class charactersTeam {
    var nameHero: String
    private var _lifePoint: Int
    private var _actionPoint: Int
    
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
    
    init(nameHero: String, lifePoint: Int, actionPoint: Int) {
        self.nameHero = nameHero
        self._lifePoint = lifePoint
        self._actionPoint = actionPoint
    }
}

// Classe du personnage barbare

class barbarian: charactersTeam {
      override init(nameHero: String, lifePoint: Int, actionPoint: Int) {
            self.nameHero = " "
            self.lifePoint = 100
            self.actionPoint = 20
        }
    
}

// Classe du personnage paladin

class paladin: charactersTeam {
    override init(nameHero: String, lifePoint: Int, actionPoint: Int) {
             self.nameHero = " "
             self.lifePoint = 100
             self.actionPoint = 15
         }
}

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
    
    
    
    init(health: Int) {
        self.health = 10
    }
    
    override init(nameHero: String, lifePoint: Int, actionPoint: Int) {
            self.nameHero = " "
            self.lifePoint = 100
            self.actionPoint = 5
         }
    
}


