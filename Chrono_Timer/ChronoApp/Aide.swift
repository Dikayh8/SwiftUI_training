//
//  Aide.swift
//  ChronoApp
//
//  Created by Joe on 31/01/2021.
//

import Foundation

enum TimerMode {
    case run
    case pause
    case initial
}
//Pour pouvoir afficher les minutes et secondes restantes
func secondesToMinutesAndSeconds(secondes: Int) -> String {
    let minutes = "\((secondes % 3600) / 60)"
    let secondes = "\((secondes % 3600) % 60)"
    let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
    let secondeStamp = secondes.count > 1 ? secondes : "0" + secondes
    
    return "\(minuteStamp) : \(secondeStamp)"
}
