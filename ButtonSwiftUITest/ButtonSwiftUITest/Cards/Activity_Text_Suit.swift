//
//  Activity_Text_Suit.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 12/03/2021.
//

import SwiftUI

import SwiftUI

struct Activity_Text_Suit: View {
    @State private var selectedSuit: String = "Select a Suit"
    
    
    var body: some View {
        VStack (spacing: 100.0) {
            HStack (spacing: 50.0) {
                Button(action: { self.selectedSuit = "♣" }) {
                    Image(systemName: "suit.club.fill")
                    Text("Club")
                }
                .padding()
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
                
                Button(action: { self.selectedSuit = "♠" }) {
                    Image(systemName: "suit.spade.fill")
                    Text("Spade")
                }
                .padding()
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
            }
            
            Text("\(self.selectedSuit)")
                .font(.largeTitle)
                .foregroundColor(.gray)
            
            HStack (spacing: 50.0) {
                Button(action: { self.selectedSuit = "♦" }) {
                    Image(systemName: "suit.diamond.fill")
                    Text("Diamond")
                }
                .padding()
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
                
                Button(action: { self.selectedSuit = "♥" }) {
                    Image(systemName: "suit.heart.fill")
                    Text("Heart")
                }
                .padding()
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
            }
        }
    }
}

struct Activity_Text_Suit_Previews: PreviewProvider {
    static var previews: some View {
        Activity_Text_Suit()
    }
}
