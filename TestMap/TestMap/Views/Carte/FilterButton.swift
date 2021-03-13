//
//  FilterButton.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        Button (action: {
            print("Affiche filtre.")
        }, label: {
            Image(systemName: "slider.horizontal.3")
                .font(.system(size: 20))
        })
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton()
    }
}
