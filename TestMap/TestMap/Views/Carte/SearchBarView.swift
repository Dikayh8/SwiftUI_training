//
//  SearchBarView.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import SwiftUI

struct SearchBarView: View {

    //State -> variable qui réagi a un changement de sa valeur...
    //elle va refresh l'ensemble de la vue...
    @State var searchText: String = ""
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
            TextField("Search", text: $searchText)
            FilterButton()
        }
        .padding(9)
        .background(Color.gray)
        .cornerRadius(6)
        .padding(.horizontal, 20)
        .frame(height: 75)
        .opacity(0.8)
        //infinity -->max espace de l'ecran
        //maxHeight
        //.frame(maxWidth: .infinity)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
