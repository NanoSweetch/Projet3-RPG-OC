//
//  gameBody.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation


/// Class structure to make the game work.
class Game {
    
    // Var that initializes each player.
    var player1 : Player
    var player2 : Player
    
    // Contains the number of turns in the game, to display the stats at the end.
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
    
    // Function that checks if all the characters of a team are dead.
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
    
    /// Function that displays the winner as well as the game stats.
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

    
// Function that manages the player's turn
    func playerTurn(attacker: Player, defender: Player)  {
        let chest = Chest()
        
// Choose a character from the team
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        
        // Check the type to assign a suitable chest to the warrior or healer.
        // If he's a healer we'll assign a weapon suitable for the Wizard.
        if let wizard = attackingCharacter as? Wizard {
            if let newWeapon = chest.randomWeapon(type: .magic) {
                print("Vous avez trouvé une meilleure arme de guérison...")
                wizard.weapon = newWeapon
            }
            
            // If it's a warrior character, we assign a suitable weapon.
            let targetCharacter = attacker.selectCharacter(team: attacker.team)
            wizard.heal(target: targetCharacter)
        } else {
            if let newWeapon = chest.randomWeapon(type: .attack) {
                print("Vous avez trouvé une meilleure arme d'attaque...")
                attackingCharacter.weapon = newWeapon
            }
            
            // If it's not a healer (Wizard), we attack.
            let targetCharacter = attacker.selectCharacter(team: defender.team)
            attackingCharacter.attack(target: targetCharacter)
        }
    }

    // Attack function.
    func fight () {
        // This loop allows the player to choose his attacker and his opponent.
        while teamIsAlive(player: player1) && teamIsAlive(player: player2){
                print("Joueur 1 c'est à toi ! (Choisis ton combattant, puis un ennemi)")
                playerTurn(attacker: player1, defender: player2)
                numberTurn += 1
                if teamIsAlive(player: player2){
                    print("Joueur 2 c'est à toi ! (Choisis ton combattant, puis un ennemi)")
                    playerTurn(attacker: player2, defender: player1 )
            }
        }
    }
}

// Once the game is over (when all the characters of a team are dead), we display the player who won and the game statistics: the number of turns and the list of the characters of both teams with their properties (health point, etc.).
