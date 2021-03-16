//
//  Model.swift
//  YouYou
//
//  Created by Jonathan Duong on 16/03/2021.
//

import Foundation
import MapKit
import SwiftUI

struct Recorder {
    
}

struct Profil {
    var name: String
    var date: Int
    var score: Int
    var localisation: String
    var description: String
    var photo: Image
    var favoris: [String]
    var socialNetwork: [URL]
    var myCapsule: CapsuleAudio
    var notification: Bool
}

struct CapsuleAudio {
    var fileAudio: String
    var localisation: String
    var Date: Date
    var timer: Timer
    var iconFilter: Image
    var hashtag: String
    var like: Bool
}

struct Recommandation {
    var theme: String
    var capsulesFavoriLocal: CapsuleAudio
    var capsulesFavoriWorld: CapsuleAudio
    var capsulesFavoriCountry: CapsuleAudio
}
