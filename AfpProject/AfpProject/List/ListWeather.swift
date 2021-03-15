//
//  ListWeather.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

//model
struct Weather: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var icon: Image { Image(systemName: imageName) }
    
}

//data...
let dataTest = [
    Weather(name: "Sun", imageName: "sun.max.fill"),
    Weather(name: "Clouds", imageName: "smoke.fill"),
    Weather(name: "Storm", imageName: "cloud.bolt.fill"),
    Weather(name: "Moon", imageName: "moon.fill"),
    Weather(name: "Snow", imageName: "snow"),
    Weather(name: "Tornado", imageName: "tornado")
]

struct WeatherRow: View {
    var weather: Weather
    
    var body: some View {
        HStack {
            weather.icon
                .font(.system(size: 30))
            Text(weather.name)
                .bold()
            
        }
    }
}

struct ListWeather: View {
    
    let weathers = dataTest
    
    var body: some View {
        NavigationView {
            List (weathers) { thisWeather in
                WeatherRow(weather: thisWeather)
            }
            .navigationBarTitle(Text("Weather"))
        }
    }
}

struct ListWeather_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListWeather()
        }
    }
}
