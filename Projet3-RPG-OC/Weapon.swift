//
//  weapon.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

/// Class weapon this structure initializes the characteristics of the weapons.
class Weapon {
    
    var nameWeapon : String
    var damageWeapon : Int
    
    /// Var which will only be used by the Wizard character.
    var heal: Int
    
    /// Initialization of class variables
    /// - Parameters:
    ///   - nameWeapon: Will block out the name of the weapon used by the character.
    ///   - damageWeapon: Contains the damage points of the character's weapon.
    ///   - heal: Contains care points for the Wizard character.
    init (nameWeapon: String, damageWeapon: Int, heal: Int){
        self.nameWeapon = nameWeapon
        self.damageWeapon = damageWeapon
        self.heal = heal
    }
}
