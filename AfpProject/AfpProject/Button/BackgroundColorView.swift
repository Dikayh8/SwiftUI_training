//
//  BackgroundColorView.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

struct BackgroundColorView: View {
    
    @State private var changeColor: Color = .white
    
    var body: some View {
        ZStack {
            changeColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                buttonCostum(changeColor: $changeColor,bgColor: .orange, imageName: "speaker.wave.3.fill")
                buttonCostum(changeColor: $changeColor,bgColor: .blue, imageName: "drop.fill")
                buttonCostum(changeColor: $changeColor, bgColor: .red, imageName: "pencil")
            }
        }
    }
}

struct buttonCostum: View {
    
    @Binding var changeColor: Color
    var bgColor: Color
    var imageName: String
    
    var body: some View {
        Button (action: {
            changeColor = bgColor
        }, label: {
            ZStack {
                HStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 90, height: 60)
                        .foregroundColor(bgColor)
                }
                Image(systemName: imageName)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        })
    }
}









struct BackgroundColorView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColorView()
    }
}
