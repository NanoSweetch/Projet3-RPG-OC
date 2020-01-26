//
//  characterWarrior.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Warrior : Character {
    
    static let maxLifePoint = 90
    static let defaultWeapon = Weapon(nameWeapon: "Marteau", damageWeapon: 20, heal: 0)
    
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Warrior.maxLifePoint, weapon: Warrior.defaultWeapon)
    }
// Fonction permettant d'ajouter les stats du personnage
        static func features() -> String{
        return "Le Warrior à \(Warrior.maxLifePoint) points de vie, un \(Warrior.defaultWeapon.nameWeapon) et à \(Warrior.defaultWeapon.damageWeapon) points de dégâts."
    }
}
