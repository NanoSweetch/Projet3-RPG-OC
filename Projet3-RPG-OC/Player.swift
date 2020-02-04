//
//  player.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Player {
    
    /// Var which will contain the player's number.
    private var playerNumber : Int
    
    /// Var which stores in a table the characters chosen by a player who constitutes his team.
    var team = [Character]()
    
    /// Var which stores in a table the names of the characters chosen by the player.
    static private var names = [String]()
    
    
    /// Initialization of the var playerNumber
    /// - Parameter playerNumber: Returns the number of player 1 or 2.
    init(playerNumber: Int) {
        self.playerNumber = playerNumber // number
    }
    
    /// Function that listens to the name that the player has chosen for his character.
    /// On verifie que le nom est écrit sans espace avec plus de 3 caractères. Puis on s'assure que le nom n'éxiste pas déjà.
    private func  nameCharacter() -> String {
        if let namePlayer = readLine() {
            
        // If the name has spaces and or less than 3 characters, an error message is returned.
            let choice = namePlayer.trimmingCharacters(in: .whitespaces)
            if choice.count < 3 || Player.names.contains(choice) {
                print("Choisissez un nom de plus de 3 caractères et qui n'existe pas encore")
            } else {
                return choice
            }
        }
        return nameCharacter()
    }
    
    /// This function initializes the team
     func createTeam() {
        
        // If the player does not choose these 3 characters, the game cannot start.
        while team.count < 3 {
            
            // We display the list of available characters and their characteristics.
            print("""
                Joueur \(playerNumber) choisissez 3 personnages dans la liste :
                1 - \(Barbarian.features())
                2 - \(Paladin.features())
                3 - \(Warrior.features())
                4 - \(Wizard.features())
                """)
            
            // We listen to the player's choice between 1 and 4.
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Tu as choisi le Barbare, donne-lui un nom :")
                    
                    // Ask for the name of the character.
                    let nameHero = nameCharacter()
                    let character = Barbarian(nameHero: nameHero)
                    
                    // Add the character to be created to the team.
                    team.append(character)
                    
                    // Add the name of the chosen character in the table name.
                    Player.names.append(nameHero)
                case "2":
                    print("Tu as choisi le Paladin, donne-lui un nom :")
                    let nameHero = nameCharacter()
                    let character = Paladin(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                case "3":
                    print("Tu as choisi le Warrior, donne-lui un nom :")
                    let nameHero = nameCharacter()
                    let character = Warrior(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                case "4":
                    print("Tu as choisi le Sorcier, donne-lui un nom :")
                    let nameHero = nameCharacter()
                    let character = Wizard(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                default:
                    print("Saisis un chiffre entre 1 et 4.")
                }
            }
        }
      
        print(Player.names.count)
        print(Player.names)
    }

    /// Function that allows you to choose a character in a team.
    /// - Parameter team: Displays the list of team characters contained in the table.
    func selectCharacter(team: [Character] ) -> Character  {
        for (index, character) in team.enumerated() {
            
            // Displays the complete team list.
            print("Le personnage \(index + 1) s'appelle \(character.nameHero) et est un \(type(of: character)) ")
            }
        
        // This loop allows you to listen to the player's choice of character
        // We check that the number is between 1 and team.count, so you can't choose a dead character.
        if let choice = readLine(){
                if let choiceInt = Int(choice){
                    if choiceInt >= 1 && choiceInt <= team.count {
                    return team[choiceInt - 1]
                }
            }
        }
        // return function to choose a character
        return selectCharacter(team: team)
    }
}
