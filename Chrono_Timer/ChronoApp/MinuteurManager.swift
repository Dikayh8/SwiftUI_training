//
//  MinuteurManager.swift
//  ChronoApp
//
//  Created by Joe on 31/01/2021.
//

import Foundation
import SwiftUI

class MinuteurManager: ObservableObject {
    //Pour mettre à jour l'affichage: @Published
    @Published var timerMode: TimerMode = .initial
    //Pour garder une trace des secondes restantes
    @Published var secondesRestantes = UserDefaults.standard.integer(forKey: "LongueurMinuteur")
    //Utilisation de l'objet Timer pour avoir toute les fonctionnalités du minuteur
    var minuteur = Timer()
    
    func start() {
        timerMode = .run
        
        minuteur = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { minuteur in
            if self.secondesRestantes == 0 {
                self.reset() }
            self.secondesRestantes -= 1
        })
    }
    
    func reset() {
        self.timerMode = .initial
        self.secondesRestantes = UserDefaults.standard.integer(forKey: "LongueurMinuteur")
        minuteur.invalidate()
    }
    
    func pause() {
        self.timerMode = .pause
        minuteur.invalidate()
    }
    
    func setMinuteurLongueur(minutes: Int) {
        //Pour garder en memoire les valeurs de la précédente utilisation: userDefault
        let userDefault = UserDefaults.standard
        //Création de la clé
        userDefault.set(minutes, forKey: "LongueurMinuteur")
        secondesRestantes = minutes
    }
}
