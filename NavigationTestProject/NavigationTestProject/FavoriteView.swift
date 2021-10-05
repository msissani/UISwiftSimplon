//
//  FavoriteView.swift
//  NavigationTestProject
//
//  Created by Vincent Qian on 14/09/2021.
//

import SwiftUI

struct FavoriteView: View {
    
    var albums: [Album] = [
            Album(title: "Homework", artist: "Daft Punk", cover: "daft", year: 1997, genre: .electronic),
            
            Album(title: "Bad", artist: "Michael Jackson", cover: "mj", year: 1997, genre: .pop),

            Album(title: "Enter The Wu-Tang", artist: "WU-Tang", cover: "wutang", year: 1998, genre: .hiphop)
        ]
    
    var body: some View {
        NavigationView{
            List(albums) { album in
                Text(album.title)
                    .bold()
                Spacer()
                Image(systemName: "star.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }.navigationTitle("Favoris")
        }
        
    }
    
    
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
