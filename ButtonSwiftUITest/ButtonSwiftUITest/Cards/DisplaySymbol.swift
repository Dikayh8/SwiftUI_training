//
//  DisplaySymbol.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 13/03/2021.
//

import SwiftUI


struct DisplaySymbol: View {
    
    @State var suits: Image = Image(systemName: "")
    
    //Pour éviter de réécrire du code...
    //On retourne une View car Button est une View...
    func button(imageName: String, text: String, color: Color) -> some View {
        Button (action: {
            suits = Image(systemName: imageName)
        }, label: {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(16)
            .background(color)
            .cornerRadius(15)
        })
    }
    
    var body: some View {
        VStack (alignment: .center) {
            
            Text("Select a Suit")
                .font(.largeTitle)
                .bold()
            
            HStack(spacing: 40) {
                //Récupération de la fonction pour les boutons...
                button(imageName: "suit.spade.fill", text: "Spade", color: .black)
                button(imageName: "suit.club.fill", text: "Club", color: .black)
            }
            Spacer(minLength: 0) // Spacer, espace vide flexible
            
            //Pour changer la couleur du symbol...
            if self.suits == Image(systemName: "suit.spade.fill") || self.suits == Image(systemName: "suit.club.fill") {
                suits
                    .font(.system(size: 100))
            } else {
                suits
                    .font(.system(size: 100))
                    .foregroundColor(.red)
            }
            
            Spacer(minLength: 0) // Spacer, espace vide flexible
            HStack(spacing: 40) {
                button(imageName: "suit.diamond.fill", text: "Diamond", color: .red)
                button(imageName: "suit.heart.fill", text: "Heart", color: .red)
            }
        }.padding(.vertical, 150)
    }
}

struct DisplaySymbol_Previews: PreviewProvider {
    static var previews: some View {
        DisplaySymbol()
    }
}
