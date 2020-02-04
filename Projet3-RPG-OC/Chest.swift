//
//  chest.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 27/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Chest {
    // Enum for random Chest.
    enum AttackType {
        case magic, attack
    }

    private let newWeapon = "SpecialWeapon"
    private let damage = 30
    private let magicWeapon = Weapon(nameWeapon: "magicWeapon", damageWeapon: 0, heal: 30)
    private let specialWeapon = Weapon(nameWeapon: "specialWeapon", damageWeapon: 25, heal: 0)
    
    // Func of a special weapon when you stumble upon the trunk.
    func randomWeapon(type: AttackType ) -> Weapon? {
        let randomInt = Int.random(in: 1...4)
        if randomInt == 2 {
            
    // This condition makes it possible to deduce the type of the character in order to assign him a suitable chest.
            if type == .attack {
                return specialWeapon
            } else {
               return magicWeapon
            }
        }
        //  return nil if the random is not equal at 2.
            return nil
    }
}
