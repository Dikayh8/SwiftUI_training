//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Jonathan Duong on 22/02/2021.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    
    let jsonManager = JsonManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                jsonManager.createFile()
            }
        }
    }
}
