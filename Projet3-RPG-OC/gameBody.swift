//
//  gameBody.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Game {
    
    var player1 : Player
    var player2 : Player
    var numberTurn = 0
    var arrayDead = [Character]()
    
    init() {
        
        player1 = Player(playerNumber: 1)
        player1.createTeam()
        
        player2 = Player(playerNumber: 2)
        player2.createTeam()
        
        fight()
        statsGame()
    }
    
    func teamIsAlive(player: Player) -> Bool {
        //  the loop for in allows to check if the character to 0pv and if yes delete of the array
        for(index, character)  in player.team.enumerated() {
            if  character.lifePoint <= 0{
                arrayDead.append(character)
                player.team.remove(at: index)
            }
        }
        // return false when all the team was dead
        if  player.team.count == 0 {
            return false
        }
        //   return true when there is at least 1 character
        return true
    }
    
    func statsGame() {
         print("Oh oh... Toute l'équipe est morte !")
        if teamIsAlive(player: player1) {
            print( "Le joueur 1 a gagné !")
        } else {
            print("Le joueur 2 a gagné !")
        }
         print("Le nombre de tours : \(numberTurn)")
         print("Les personnages morts sont :")
         for  characterDead in arrayDead {
            print("Le personnage \(characterDead.nameHero) qui est \(type(of: characterDead)) \(characterDead.lifePoint)points de vie ")
         }
    }

    
// Function qui gére le tour de joueur
    func playerTurn(attacker: Player, defender: Player)  {
        let chest = Chest()
// Choisissez un personnage dans l'équipe
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        /*Vérification du type comme ? (en bas)
         https://stackoverflow.com/questions/24091882/checking-if-an-object-is-a-given-type-in-swift*/
        if let wizard = attackingCharacter as? Wizard {
            if let newWeapon = chest.randomWeapon(type: .magic) {
                print("Vous avez trouvé une meilleure arme de guérison...")
                wizard.weapon = newWeapon
            }
            
            // attackingcharacter est un wizard donc faire quelque chose avec la var wizard
            let targetCharacter = attacker.selectCharacter(team: attacker.team)
            wizard.heal(target: targetCharacter)
        } else {
            if let newWeapon = chest.randomWeapon(type: .attack) {
                print("Vous avez trouvé une meilleure arme d'attaque...")
                attackingCharacter.weapon = newWeapon
            }
            // if character is not wizard, attack
            let targetCharacter = attacker.selectCharacter(team: defender.team)
            attackingCharacter.attack(target: targetCharacter)
        }
    }

    func fight () {
        while teamIsAlive(player: player1) && teamIsAlive(player: player2){
                print("Joueur 1 c'est à toi !")
                playerTurn(attacker: player1, defender: player2)
                numberTurn += 1
                if teamIsAlive(player: player2){
                    print("Joueur 2 c'est à toi !")
                    playerTurn(attacker: player2, defender: player1 )
            }
        }
    }
}


/*Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts),
  tu affiches le joueur qui a gagné et les statistiques de jeu :
  le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.). */
