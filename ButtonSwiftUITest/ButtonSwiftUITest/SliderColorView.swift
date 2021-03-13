//
//  SliderColorView.swift
//  ButtonSwiftUITest
//
//  Created by Jonathan Duong on 12/03/2021.
//

import SwiftUI

struct SliderColorView: View {
    
//    @State private var sliderColor: Color
    @State var sliderRedColor: Double = 1.0
    @State var sliderBlueColor: Double = 1.0
    @State var sliderGreenColor: Double = 1.0
    
    
    var body: some View {
        ZStack {
//            Color(red: 0.52, green: 0.55, blue: 0.055)
            Color(red: sliderRedColor, green: sliderBlueColor, blue: sliderGreenColor)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    VStack{
                        HStack {
                            Text("0")
                            Slider(value: $sliderRedColor, in: 0...1)
                                .frame(width: 70, height: 50)
                            Text("255")
                        }
                        Text("Red: \(Int(sliderRedColor*255))")
                    }
                    Spacer()
                    VStack{
                        HStack {
                            Text("0")
                            Slider(value: $sliderBlueColor, in: 0...1)
                                .frame(width: 70, height: 50)
                            Text("255")
                        }
                        Text("Blue: \(Int(sliderBlueColor*255))")
                    }
                    Spacer()
                    VStack {
                        HStack {
                            Text("0")
                            Slider(value: $sliderGreenColor, in: 0...1)
                                .frame(width: 70, height: 50)
                            Text("255")
                        }
                        Text("Green: \(Int(sliderGreenColor*255))")
                    }
                }
            }
            .padding(.top, 700)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ ,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView()
    }
}
