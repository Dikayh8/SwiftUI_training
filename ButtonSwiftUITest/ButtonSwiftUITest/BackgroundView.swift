//
//  BackgroundView.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 12/03/2021.
//

import SwiftUI

struct BackgroundView: View {
    //création d'une variable de type Color
    @State var bgColor: Color = Color.orange
    
    var body: some View {
        //Superposer les Views -> ZStack
        ZStack {
            bgColor
                //Pour que ça prenne la totalité du screen
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //Positionné les éléments de manière horizontal
            HStack {
                //Création d'un Bouton
                Button (action: {
                    //Ce que fait le bouton
                    bgColor = Color.blue
                }, label: {
                    //Visuel du bouton
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 60)
                            .foregroundColor(.blue)
                        HStack{
                            Image(systemName: "pencil")
                                .foregroundColor(.white)
                            Text("Blue")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                })
                
                Button (action: {
                    bgColor = Color.red
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 100, height: 60)
                            .foregroundColor(.red)
                        HStack {
                            Image(systemName: "pencil")
                                .foregroundColor(.white)
                            Text("Red")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                })
                
                Button (action: {
                    bgColor = Color.green
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 60)
                            .foregroundColor(.green)
                        HStack {
                            Image(systemName: "pencil")
                                .foregroundColor(.white)
                            Text("Green")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                })
            }
        }
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
