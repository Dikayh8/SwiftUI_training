//
//  CarteView.swift
//  TestMap
//
//  Created by Jonathan Duong on 05/03/2021.
//

import MapKit
import SwiftUI

struct CarteView: View {
    //latitude: 35.67, longitude: 139.65
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.5, longitude: 2.2), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    private var places: [Location] = [
        Location(coordinate: CLLocationCoordinate2D(latitude: 48.5, longitude: 2.2))
    ]
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
            Map(coordinateRegion: $region, annotationItems: places, annotationContent: { place in
                MapPin(coordinate: place.coordinate)
            })
            SearchBarView()
                .padding(.top, 44)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct CarteView_Previews: PreviewProvider {
    static var previews: some View {
        CarteView()
    }
}
