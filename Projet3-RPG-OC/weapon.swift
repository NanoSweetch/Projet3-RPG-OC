//
//  weapon.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Classe arme cette structure initialise les caractéristiques des armes (utilisé par tout les personnage !sauf heal à modifier)

class Weapon {
    
    var nameWeapon : String
    var damageWeapon : Int
    var heal: Int
    
    init (nameWeapon: String, damageWeapon: Int, heal: Int){
        self.nameWeapon = nameWeapon
        self.damageWeapon = damageWeapon
        self.heal = heal // Pour le healer voir pour changer le code
    }
}
