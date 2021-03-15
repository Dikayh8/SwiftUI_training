//
//  List_icone.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

struct List_icone: View {
    var body: some View {
        VStack (alignment: .leading){
            MySource(name: "Danilo Santana", iconeColor: .orange, iconeName: "circle.fill")
            MySource(name: "Gilles Deltel", iconeColor: .purple, iconeName: "circle.fill")
            MySource(name: "Mark Nichols", iconeColor: .blue, iconeName: "circle.fill")
            VStack (alignment: .leading){
                MySource(name: "Go Vegan", iconeColor: .green, iconeName: "leaf.arrow.triangle.circlepath")
                MySource(name: "Go Meat", iconeColor: .red, iconeName: "circle.fill")
                MySource(name: "Go Beer", iconeColor: .yellow, iconeName: "sun.max.fill")
            }
            .padding(.top, 42)
        }
    }
}

struct MySource: View {
    
    var name: String
    var initialName: String {return name.first?.uppercased() ?? "e"}
    var iconeColor: Color
    var iconeName: String
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Image(systemName: iconeName)
                        .foregroundColor(iconeColor)
                        .font(.system(size: 30))
                    Text(initialName)
                        .foregroundColor(.white)
                        .bold()
                }
                Text(name)
            }
        }
    }
}


//
//struct List_icone_Previews: PreviewProvider {
//    static var previews: some View {
//        List_icone()
//    }
//}
