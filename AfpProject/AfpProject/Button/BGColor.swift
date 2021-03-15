//
//  BGColor.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

struct BGColor: View {
    
    @State var bgColor: Color = Color.white
    @State var changeSystemName: Image = Image(systemName: "")
    
    func button(color: Color, imageName: String) -> some View {
        Button (action: {
            bgColor = color
        }, label: {
            ZStack {
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 90, height: 60)
                        .foregroundColor(color)
                }
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
            }
        })
    }
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                button(color: .red, imageName: "tortoise.fill")
                button(color: .green, imageName: "speaker.zzz.fill")
                button(color: .orange, imageName: "hare.fill")
                button(color: .blue, imageName: "speaker.wave.3.fill")
            }
        }
    }
}

struct BGColor_Previews: PreviewProvider {
    static var previews: some View {
        BGColor()
    }
}
