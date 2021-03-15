//
//  ListView_Example.swift
//  AfpProject
//
//  Created by Jonathan Duong on 15/03/2021.
//

import SwiftUI



// first step --> data struct
struct Albums: Identifiable {
    var id = UUID()
    var name: String
}

struct AlbumRow: View {
    //link to first step
    var albums: Albums
    
    var body: some View {
        Text(albums.name)
    }
}

struct ListView_Example: View {
    //Array list
    let albums = [
        Albums(name: "123456"),
        Albums(name: "ABCDE")
    ]
    var body: some View {
        //loop for list
        List(albums) { thisAlbum in
            AlbumRow(albums: thisAlbum)
        }
    }
}







struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView_Example()
    }
}
