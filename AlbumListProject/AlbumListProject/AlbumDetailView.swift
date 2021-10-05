//
//  AlbumDetailView.swift
//  AlbumListProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

import SwiftUI

struct AlbumDetailView: View {
    var album: Album
    
    var body: some View {
        VStack (spacing: 10){
            Text(album.artist)
                .font(.largeTitle)
                .bold()
            Image(album.cover)
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(color:.blue, radius: 10, x: 5.0, y: 5.0)
                .opacity(0.9)
                .padding()
            Text(album.title)
                .foregroundColor(.gray)
                .font(.title)
            Text(album.genre.rawValue)
                .foregroundColor(.blue)
            Text(String(album.yearRelease))
                .foregroundColor(.red)
        }
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlbumDetailView(album: Album(title: "Homework", artist: "DaftPunk", cover: "dpunk", yearRelease: 1997, genre: .electronic))
            AlbumDetailView(album: Album(title: "Homework", artist: "DaftPunk", cover: "dpunk", yearRelease: 1997, genre: .electronic))
                .preferredColorScheme(.dark)
        }
    }
}
