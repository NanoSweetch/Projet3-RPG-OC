//
//  characterPaladin.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

/// Class daughter of the Paladin character
class Paladin : Character {
    
    /// Var maxLifePoint allows the code to subtract damage to lifePoint from the Character (Paladin)
   static var maxLifePoint = 100
    
    /// Var defaultWeaponWeapon initializes the Character's (Paladin's) weapon with the default weapon values
   static private let defaultWeapon = Weapon(nameWeapon: "Épée", damageWeapon: 15, heal: 0)
    
    /// Initializer of the Paladin class thanks to the Character init
    /// - Parameter nameHero: nameHero calls the value stored in the table
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Paladin.maxLifePoint, weapon: Paladin.defaultWeapon)
    }
    // Function to add character stats
    /// This function is used to help the player choose a character. We present him with all the statistics of the character (Paladin).
    static func features() -> String{
        return "Le Paladin à \(Paladin.maxLifePoint) points de vie, une \(Paladin.defaultWeapon.nameWeapon) et à \(Paladin.defaultWeapon.damageWeapon) points de dégâts."
    }
}
