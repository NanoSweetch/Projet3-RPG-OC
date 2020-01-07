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
    
// Définition variable qui additionne les valeur Point d'action & dégat arme
    var barbarianFightPoint: Int {
        get{
        return actionPoint + heroArmsPower
        }
    }
    
// Fonction pour combat barbare vs barbareBot (PV barbareBot - Dégat barbare = nouvelle valeur PV barbareBot)
 
    func fightBarbarianBarbarianBot() {
        barbarianBot.lifePoint -= barbarianFightPoint
        
    }
}
