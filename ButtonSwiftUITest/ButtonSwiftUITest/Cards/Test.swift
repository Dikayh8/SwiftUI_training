//
//  Test.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 12/03/2021.
//

import SwiftUI

struct Test: View {
    
    @State var suits: Image = Image(systemName: "")
    
    //Pour éviter de réécrire du code...
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
        VStack(alignment: .center) {
            HStack(spacing: 40) {
                button(imageName: "suit.spade.fill", text: "Spade", color: .black)
                button(imageName: "suit.club.fill", text: "Club", color: .black)
            }
            Spacer(minLength: 0) // Spacer, espace vide flexible
            
            suits
                .font(.system(size: 100))
            
            Spacer(minLength: 0) // Spacer, espace vide flexible
            HStack(spacing: 40) {
                button(imageName: "suit.diamond.fill", text: "Diamond", color: .red)
                button(imageName: "suit.heart.fill", text: "Heart", color: .red)
            }
        }.padding(.vertical, 50)
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
