//
//  ChronoAppApp.swift
//  ChronoApp
//
//  Created by Joe on 31/01/2021.
//

import SwiftUI

@main
struct ChronoAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Chronometre")
                }
                NavigationView {
                    Timers()
                }
                .tabItem {
                    Image(systemName: "timer")
                    Text("Minuteur")
                }
            }
        }
    }
}
