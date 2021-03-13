//
//  RecorderButton.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import SwiftUI
import AVKit

struct RecorderButton: View {
    
    var body: some View {
        ZStack {
            //ImageMicButton()
            ImageStopButton()
        }
    }
}

struct ImageStopButton: View {
    
    @State var record = false
    @State private var animateBigCircle = false
    @State private var animateSmallCircle = false
    @State var active = false
    
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
//            Circle()
//                .foregroundColor(Color(red: 0.905, green: 0.91, blue: 0.91))
//                .frame(width: 150, height: 150)
//                .scaleEffect(animateSmallCircle ? 0.9 : 1.1)
//                .animation(Animation.easeInOut(duration: 0.4).repeatForever(autoreverses: false))
//                .onAppear() {
//                    self.animateSmallCircle.toggle()
//                }
            Button (action: {
                active.toggle()
            }, label: {
                Image(systemName: active ? "stop.circle.fill" : "mic.circle.fill")
                    .foregroundColor(.red)
                    .frame(width: 90, height: 90)
                    .font(.system(size: 80))
            })
        }
    }
}
struct RecorderButton_Previews: PreviewProvider {
    static var previews: some View {
        RecorderButton()
    }
}
