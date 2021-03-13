//
//  TabView.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import SwiftUI

struct MasterView: View {
    var body: some View {
        TabView {
            NavigationView {
                CarteView()
            }
            .tabItem {
                Image(systemName: "map")
                Text("Carte")
            }
            
            NavigationView {
                RecorderButton()
            }
            .tabItem {
                Image(systemName: "mic.fill")
                Text("Recorder")
            }
            
            NavigationView {
                ProfilView()
            }
            .tabItem {
                Image(systemName: "person.circle")
                Text("Profil")
            }
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
