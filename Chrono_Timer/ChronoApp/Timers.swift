//
//  Timer.swift
//  ChronoApp
//
//  Created by Joe on 31/01/2021.
//

import SwiftUI

struct Timers: View {
    
    @ObservedObject var minuteurManager = MinuteurManager()
    //Pour permettre à l'utilisateur de régler la durer du minuteur : Picker
    @State var selectedPickerIndex = 0
    let availableMinutes = Array(1 ... 59)
    
    var body: some View {
        NavigationView {
            VStack {
                Text(secondesToMinutesAndSeconds(secondes: minuteurManager.secondesRestantes))
                    .font(.system(size: 80))
                    .padding(.top, 80)
                Image(systemName: minuteurManager.timerMode == .run ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .foregroundColor(.red)
                    //Pour rajouter une action lorsque l'on appuie sur l'image: onTapGesture
                    .onTapGesture(perform: {
                        if self.minuteurManager.timerMode == .initial {
                            //Pour afficher le nombre de seconde restant
                            self.minuteurManager.setMinuteurLongueur(minutes: self.availableMinutes[self.selectedPickerIndex] * 60)
                        }
                        self.minuteurManager.timerMode == .run ? self.minuteurManager.pause() :
                        self.minuteurManager.start()
                    })
                
                if minuteurManager.timerMode == .pause {
                    Image(systemName: "gobackward")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .padding(.top, 40)
                        .onTapGesture(perform: {
                            self.minuteurManager.reset()
                        })
                }
                if minuteurManager.timerMode == .initial {
                    Picker(selection: $selectedPickerIndex, label: Text("")) {
                        ForEach(0 ..< availableMinutes.count) {
                            Text("\(self.availableMinutes[$0]) min")
                        }
                    }
                    .labelsHidden()
                }
                Spacer()
            }
            .navigationBarTitle("Minuteur")
        }
        .environment(\.colorScheme, .dark)
    }
}

struct Timers_Previews: PreviewProvider {
    static var previews: some View {
        Timers()
            .padding(.top, 60)
    }
}
