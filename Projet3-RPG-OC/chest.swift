//
//  chest.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 29/12/2019.
//  Copyright © 2019 Maxime DUTOUR. All rights reserved.
//

import Foundation

// Je crée une classe « chest » qui va me permettre de récupérer une arme avec un point d'action aléatoire.

class chest {
    var arms = ["Pieu de bois", "Dague", "Épieu", "Gourdin", "Baïonnette", "Bâton", "Lance", "Pique", "Hachette", "Marteau", "Matraque", "Trident", "Faux", "Massue", "Fouet"]
    
    
    init(arms: [String]) {
        self.arms = arms
    }
    
    let randomArmsPa = Int.random(in: 12 ... 23)
    lazy var randomArm = arms.randomElement()
    
    func openChest() {
        
        
    }
    
}
