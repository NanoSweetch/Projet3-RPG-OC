//
//  characterWarrior.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

/// Class daughter of the Warrior character
class Warrior : Character {
    
    /// Var maxLifePoint allows the code to subtract damage to lifePoint from the Character (Warrior)
    static var maxLifePoint = 90
    
    /// Var defaultWeaponWeapon initializes the Character's (Warrior's) weapon with the default weapon values
    static private let defaultWeapon = Weapon(nameWeapon: "Marteau", damageWeapon: 20, heal: 0)
    
    /// Initializer of the Warrior class thanks to the Character init
    /// - Parameter nameHero: nameHero calls the value stored in the table
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Warrior.maxLifePoint, weapon: Warrior.defaultWeapon)
    }
     // Function to add character stats
    /// This function is used to help the player choose a character. We present him with all the statistics of the character (Warrior).
        static func features() -> String{
        return "Le Warrior à \(Warrior.maxLifePoint) points de vie, un \(Warrior.defaultWeapon.nameWeapon) et à \(Warrior.defaultWeapon.damageWeapon) points de dégâts."
    }
}
