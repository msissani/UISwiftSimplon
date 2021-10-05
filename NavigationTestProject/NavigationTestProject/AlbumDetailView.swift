//
//  AlbumDetailView.swift
//  NavigationTestProject
//
//  Created by Vincent Qian on 14/09/2021.
//

import SwiftUI

struct AlbumDetailView: View {
    var album: Album
    
    var body: some View {
        VStack(spacing: 20) {
            Image(album.cover)
                .resizable()
                .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                .padding()
            Text(album.title)
                .font(.title)
                .bold()
            Text(album.artist)
                .font(.title)
                .foregroundColor(.gray)
            Text(album.genre.rawValue)
                .foregroundColor(.red)
            Text(String(album.year))
                .foregroundColor(.blue)
        }
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(album: Album(title: "Homework", artist: "Daft Punk", cover: "daft", year: 1997, genre: .electronic))
    }
}
