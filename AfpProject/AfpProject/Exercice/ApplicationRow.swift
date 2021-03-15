//
//  ApplicationRow.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI

struct ApplicationRow: View {
    
    var myApplication: Application
    
    var body: some View {
        HStack {
            Image(myApplication.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack (alignment: .leading){
                Text(myApplication.name)
                    .font(.title)
                Text(myApplication.description)
                    .font(.subheadline)
            }
        }
    }
}

struct ApplicationRow_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationRow(myApplication: oneApplicationDataTest)
            .previewLayout(.sizeThatFits)
    }
}
