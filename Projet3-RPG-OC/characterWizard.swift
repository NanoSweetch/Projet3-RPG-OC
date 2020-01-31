//
//  characterWizard.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

/// Class daughter of the Wizard character
class Wizard : Character {
    
    /// Var maxLifePoint allows the code to subtract damage to lifePoint from the Character (Wizard)
    static var maxLifePoint = 80
    
    /// Var defaultWeaponWeapon initializes the Character's (Wizard's) weapon with the default weapon values
    static var defaultWeapon = Weapon(nameWeapon: "Baguette magique", damageWeapon: 0, heal: 15)
    
    /// Initializer of the Wizard class thanks to the Character init
    /// - Parameter nameHero: nameHero calls the value stored in the table
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Wizard.maxLifePoint, weapon: Wizard.defaultWeapon)
    }
    // Function to add character stats
    /// This function is used to help the player choose a character. We present him with all the statistics of the character (Wizard).
    static func features() -> String{
        return "Le sorcier à \(Wizard.maxLifePoint) points de vie, une \(Wizard.defaultWeapon.nameWeapon) et à \(Wizard.defaultWeapon.heal) points de dégâts."
}
    
    /// Healing function restores the health points of the chosen character in the team.
    // Attack function The target parameters have the same properties as the Character class.
    // self.Weapon.damageWeapon = damageWeapon caused to the attacker's weapon
    func heal(target: Character) {
        target.lifePoint = target.lifePoint + self.weapon.heal
        print("\(self.nameHero) traité \(target.nameHero) et lui a donné \(self.weapon.heal)points de vie. \(target.nameHero) a maintenant \(target.lifePoint)points de vie." )
    }
}
