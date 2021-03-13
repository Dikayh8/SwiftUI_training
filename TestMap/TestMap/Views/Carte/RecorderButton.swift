//
//  RecorderButton.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import SwiftUI
import AVKit

struct RecorderEffectButton: View {
    
    @State private var animateBigCircle = false
    @State private var animateSmallCircle = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke()
                .frame(width: 340, height: 340)
                .foregroundColor(.gray)
                .scaleEffect(animateBigCircle ? 1 : 0.3)
                .opacity(animateBigCircle ? 0 : 1)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false))
                .onAppear(){
                    self.animateBigCircle.toggle()
                }
            Circle()
                .foregroundColor(Color(red: 0.905, green: 0.91, blue: 0.91))
                .frame(width: 150, height: 150)
                .scaleEffect(animateSmallCircle ? 0.9 : 1.1)
                .animation(Animation.easeInOut(duration: 0.4).repeatForever(autoreverses: false))
                .onAppear() {
                    self.animateSmallCircle.toggle()
                }
        }
    }
}

struct RecorderButton: View {
    
    @State var stopAndMicImage: Image = Image(systemName: "")
    @State var active: Bool = false
    
    func button(imageName: String) -> some View {
        Button (action: {
            self.active.toggle()
            stopAndMicImage = Image(systemName: imageName)
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.red)
                    .frame(width: 90, height: 90)
                    .font(.system(size: 80))
            }
        })
    }
    
    var body: some View {
        VStack {
            if active {
                ZStack {
                    RecorderEffectButton()
                    button(imageName: "stop.circle.fill")
                }
            } else {
                button(imageName: "mic.circle.fill")
            }
        }
    }
}

struct RecorderButton_Previews: PreviewProvider {
    static var previews: some View {
        RecorderButton()
    }
}
