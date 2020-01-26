//
//  player.swift
//  Projet3-RPG-OC
//
//  Created by Maxime DUTOUR on 26/01/2020.
//  Copyright © 2020 Maxime DUTOUR. All rights reserved.
//

import Foundation

class Player {
    
    var playerNumber : Int
// Stock les personnages choisis par un joueur dans un tableau qui constitue son équipe
    var team = [Character]()
// Stock les noms choisis par le joueur pour ses personnages dans un tableau
    static var names = [String]()
    
    init(playerNumber: Int) {
        self.playerNumber = playerNumber // number
    }
    
    /* Le nom de la fonctionCaractère écouter l'entrée clavier ReadLine : en premier lieu, il vérifie que le nom est
    bien écrit sans espace, plus de 3 lettres et un nom qui n'existe pas si c'est le cas
    il retourne le choix, sinon on retourne la fonction (récursivité) */
    
    func  nameCharacter() -> String {
        if let namePlayer = readLine() {
            
            // supprimer les espaces avant et après les caractères et vérifier qu'un nom qui n'existe pas
        // https://stackoverflow.com/questions/28570973/how-should-i-remove-all-the-leading-spaces-from-a-string-swift
            let choice = namePlayer.trimmingCharacters(in: .whitespaces)
            if choice.count < 3 || Player.names.contains(choice) {
                print("Choisissez un nom de plus de 3 caractères et qui n'existe pas encore")
            } else {
                return choice
            }
        }
        return nameCharacter()
    }
    
    func createTeam() {
        // si le joueur ne choisit pas ces 3 personnages, le jeu ne peut pas commencer.
        while team.count < 3 {
            // voir la liste des personnages disponibles
            print("""
                Joueur \(playerNumber) choisissez 3 personnages dans la liste :
                1 - \(Barbarian.features())
                2 - \(Paladin.features())
                3 - \(Warrior.features())
                4 - \(Wizard.features())
                """)
            // écouter l'entrée clavier ReadLine
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Tu as choisi le barbare, donne-lui un nom :")
                    // Demander le nom du personnage
                    // Ajouter le personnage à créer dans l'équipe
                    // Ajouter le nom du caractère choisi dans le nom du tableau
                    let nameHero = nameCharacter()
                    let character = Barbarian(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                case "2":
                    print("Tu as choisi le paladin, donne-lui un nom :")
                    let nameHero = nameCharacter()
                    let character = Paladin(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                case "3":
                    print("Tu as choisi le warrior, donne-lui un nom :")
                    let nameHero = nameCharacter()
                    let character = Warrior(nameHero: nameHero)
                    team.append(character)
                    Player.names.append(nameHero)
                case "4":
                    print("Tu as choisi le sorcier, donne-lui un nom :")
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

    //    Choisissez un personnage dans notre équipe
    func selectCharacter(team: [Character] ) -> Character  {
        for (index, character) in team.enumerated() {
            // voir la liste des caractères dans le tableau
            print("Le personnage \(index + 1) s'appelle \(character.nameHero) et est \(type(of: character)) ")
            }
        // Choisissez un personnage dans notre équipe
               /* vérifier le choixInt entre 1 et team.count pour quand un personnage est mort on ne peut pas choisir cet indice
                   choix de retourNT-1 */
        if let choice = readLine(){
                if let choiceInt = Int(choice){
                    if choiceInt >= 1 && choiceInt <= team.count {
                    return team[choiceInt - 1]
                }
            }
        }
        //    return function to choose a character
        return selectCharacter(team: team)
    }
}
