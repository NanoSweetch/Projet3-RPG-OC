//
//  character.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe Personnage cette structure initialise les caractéristiques des personnages
class Character {
    
    var nameHero : String
    var lifePoint : Int
    var weapon : Weapon
    
    init ( nameHero: String, lifePoint: Int, weapon: Weapon){
        self.nameHero = nameHero
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
    func attack(target: Character) {
           target.lifePoint  -= self.weapon.damageWeapon
           
           if target.lifePoint <= 0{
              target.lifePoint = 0
               print("\(target.nameHero) n'a plus de vie")
           }
           print("\(self.nameHero) attaque \(target.nameHero) et lui a infligé \(self.weapon.damageWeapon)points de vie. \(target.nameHero) a maintenant \(target.lifePoint)points de vie" )
       }
}

