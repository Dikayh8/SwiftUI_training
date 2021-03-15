//
//  Application.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import Foundation
import SwiftUI

struct Application: Identifiable {
    let id = UUID()
    
    var name: String
    var description: String
    var imageName: String
    var iconApplication: Image { Image(imageName) }
    
    var bought: Bool = false
}
