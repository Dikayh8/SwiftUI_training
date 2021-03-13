//
//  CardsView.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 12/03/2021.
//

import SwiftUI

struct CardsView: View {
    
    @State var suits: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    ZStack {
                        Button (action: {
                            
                            
                        }, label: {
                            ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                                .padding(.trailing, 40)
                                .foregroundColor(.black)
                            HStack {
                                Image(systemName: "suit.club.fill")
                                    .foregroundColor(.white)
                                Text("Spades")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(.trailing, 40)
                            }
                        })

                    }
                    ZStack {
                        Button (action: {
                            
                            //some code...
                            
                        }, label: {
                            ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                                .padding(.trailing, 40)
                                .foregroundColor(.black)
                            HStack {
                                Image(systemName: "suit.spade.fill")
                                    .foregroundColor(.white)
                                Text("Spades")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(.trailing, 40)
                            }
                        })
                    }
                }
                .padding(.leading, 45)
                .padding(.bottom, 400)
            }
            Text("Select a Suits")
            
            VStack {
                HStack {
                    ZStack {
                        Button (action: {
                            
                            //some code...
                            
                        }, label: {
                            ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                                .padding(.trailing, 40)
                                .foregroundColor(.red)
                            HStack {
                                Image(systemName: "suit.diamond.fill")
                                    .foregroundColor(.white)
                                Text("Diamond")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(.trailing, 40)
                            }
                        })

                    }
                    ZStack {
                        Button (action: {
                            
                            //some code...
                            
                        }, label: {
                            ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                                .padding(.trailing, 40)
                                .foregroundColor(.red)
                            HStack {
                                Image(systemName: "suit.heart.fill")
                                    .foregroundColor(.white)
                                Text("Heart")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding(.trailing, 40)
                            }
                        })
                    }
                }
                .padding(.leading, 45)
                .padding(.top, 400)
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
