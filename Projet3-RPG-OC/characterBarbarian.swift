//
//  characterBarbarian.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe fille du personnage Barbare
class Barbarian : Character {
    
   static  var maxLifePoint = 115
   static  var defaultWeapon = Weapon(nameWeapon: "Dague", damageWeapon: 10, heal: 0)
    
    /// <#Description#>
    /// - Parameter nameHero: <#nameHero description#>
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Barbarian.maxLifePoint, weapon: Barbarian.defaultWeapon)
    }
// Fonction permettant d'ajouter les stats du personnage
    static func features() -> String{
        return "Le Barbare à \(Barbarian.maxLifePoint) points de vie, une \(Barbarian.defaultWeapon.nameWeapon) et à \(Barbarian.defaultWeapon.damageWeapon) points de dégâts."
    }
}
