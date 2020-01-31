//
//  characterBarbarian.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

/// Class daughter of the Barbarian character
class Barbarian : Character {
    
    /// Var maxLifePoint allows the code to subtract damage to lifePoint from the Character (Barbarian)
   static  var maxLifePoint = 115
    
     /// Var defaultWeaponWeapon initializes the Character's (Barbarian's) weapon with the default weapon values
   static  var defaultWeapon = Weapon(nameWeapon: "Dague", damageWeapon: 10, heal: 0)
    
    /// Initializer of the Barbarian class thanks to the Character init
    /// - Parameter nameHero: nameHero calls the value stored in the table
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Barbarian.maxLifePoint, weapon: Barbarian.defaultWeapon)
    }
    // Function to add character stats
    /// This function is used to help the player choose a character. We present him with all the statistics of the character (Barbarian).
    static func features() -> String{
        return "Le Barbare à \(Barbarian.maxLifePoint) points de vie, une \(Barbarian.defaultWeapon.nameWeapon) et à \(Barbarian.defaultWeapon.damageWeapon) points de dégâts."
    }
}
