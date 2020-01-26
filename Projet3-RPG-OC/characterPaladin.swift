//
//  characterPaladin.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Paladin : Character {
    
   static  var maxLifePoint = 100
   static  var defaultWeapon = Weapon(nameWeapon: "Épée", damageWeapon: 15, heal: 0)
    
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Paladin.maxLifePoint, weapon: Paladin.defaultWeapon)
    }
// Fonction permettant d'ajouter les stats du personnage
    static func features() -> String{
        return "Le Paladin à \(Paladin.maxLifePoint) points de vie, une \(Paladin.defaultWeapon.nameWeapon) et à \(Paladin.defaultWeapon.damageWeapon) points de dégâts."
    }
}
