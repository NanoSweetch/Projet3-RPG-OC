//
//  character.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Character class this structure initializes the characteristics of the characters
class Character {
    
     var nameHero : String
     var lifePoint : Int
     var weapon : Weapon
    
    init ( nameHero: String, lifePoint: Int, weapon: Weapon){
        self.nameHero = nameHero
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
    
    /// Attack function allows a character to inflict his damage points on the opponent.
    /// - Parameter target: Returning to the character targeted for attack.
     private func attack(target: Character) {
           target.lifePoint  -= self.weapon.damageWeapon
           
        // Loop to check if the character is alive.
           if target.lifePoint <= 0{
              target.lifePoint = 0
               print("\(target.nameHero) n'a plus de vie")
           }
        // Print which shows the statistics of the attack.
           print("\(self.nameHero) attaque \(target.nameHero) et lui a infligé \(self.weapon.damageWeapon)points de vie. \(target.nameHero) a maintenant \(target.lifePoint)points de vie.")
       }
    
}

