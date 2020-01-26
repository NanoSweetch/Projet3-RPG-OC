//
//  characterWizard.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Wizard : Character {
    
    static var maxLifePoint = 80
    static var defaultWeapon = Weapon(nameWeapon: "Baguette magique", damageWeapon: 0, heal: 15)
    
    init(nameHero: String){
        super.init(nameHero: nameHero, lifePoint: Wizard.maxLifePoint, weapon: Wizard.defaultWeapon)
    }
// Fonction permettant d'ajouter les stats du personnage
    static func features() -> String{
        return "Le sorcier à \(Wizard.maxLifePoint) points de vie, une \(Wizard.defaultWeapon.nameWeapon) et à \(Wizard.defaultWeapon.heal) points de dégâts."
}
    
// Fonction de guérison rétablit les points de vie du personnage choisie dans l'équipe
    
    func heal(target: Character) {
        target.lifePoint = target.lifePoint + self.weapon.heal
        print("\(self.nameHero) traité \(target.nameHero) et lui a donné \(self.weapon.heal)points de vie. \(target.nameHero) a maintenant \(target.lifePoint)points de vie." )
    }
    /*Fonction d'attaque Les paramètres cibles ont les mêmes propriétés que la classe Character
        self.weapon.damage = dommages causés à l'arme de l'agresseur*/
       
  
}
