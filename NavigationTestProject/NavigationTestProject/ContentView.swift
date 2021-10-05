//
//  ContentView.swift
//  NavigationTestProject
//
//  Created by Vincent Qian on 14/09/2021.
//

import SwiftUI

enum Genre: String {
    case classic = "Musique classique"
    case hiphop = "Hip hop"
    case rock = "Rock"
    case pop = "Pop"
    case jazz = "Jazz"
    case electronic = "Electronique"
}

struct Album: Identifiable {
    var id = UUID()
    let title: String
    let artist: String
    let cover: String
    let year: Int
    let genre: Genre
}

struct ContentView: View {
    
    @State private var isAlbumPresented: Bool = false
    
    @State private var albums: [Album] = [
            Album(title: "Homework", artist: "Daft Punk", cover: "daft", year: 1997, genre: .electronic),
            
            Album(title: "Bad", artist: "Michael Jackson", cover: "mj", year: 1997, genre: .pop),

            Album(title: "Enter The Wu-Tang", artist: "WU-Tang", cover: "wutang", year: 1998, genre: .hiphop),

            Album(title: "In Utero", artist: "Nirvana", cover: "nirvana", year: 1993, genre: .rock),

            Album(title: "L'art De La Fugue", artist: "J-S Bach", cover: "bach", year: 2000, genre: .classic)
        ]
    
    var body: some View {
        TabView {
            
            NavigationView{
                List(albums) { album in
                    NavigationLink(
                        destination: AlbumDetailView(album: album),
                        label: {
                            AlbumRow(album: album)
                        })
                }.navigationTitle("Spotilist")
                .navigationBarItems(trailing: Button(action: {
                    isAlbumPresented.toggle()
                }, label: {
                    Image(systemName: "plus")
                }))
                .sheet(isPresented: $isAlbumPresented, content: {
                    AddAlbumView(albums: $albums)
                })
            }.tabItem {
                Label(
                title: { Text("Musics") },
                icon: { Image(systemName: "music.note") })
            }
            
            ProfilView()
                .tabItem { Label(
                    title: { Text("Profil") },
                    icon: { Image(systemName: "person.fill") })
                }
            
            FavoriteView()
                .tabItem { Label (
                    title: { Text("Favorites") },
                    icon: { Image(systemName: "star.fill") })
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}

struct AlbumRow: View {
    let album : Album
    
    var body: some View {
        HStack {
            Image(album.cover)
                .resizable()
                .scaledToFill()
                .frame(width : 100, height:100, alignment: .center)
            VStack(alignment: .leading){
                Text(album.title)
                    .font(.title3)
                    .bold()
                Text(album.artist)
                    .font(.footnote)
                Text(String(album.year))
                    .foregroundColor(.blue)
            }
            Spacer()
        }
    }
}
