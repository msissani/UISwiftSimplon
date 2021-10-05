//
//  ContentView.swift
//  AlbumListProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

import SwiftUI

// titre
// artiste
// pochette
// Année
// Genre

enum Genre: String {
    case jazz = "Jazz"
    case classic = "Musique Classique"
    case rap = "Rap"
    case hiphop = "HipHop"
    case rock = "Rock"
    case pop = "Pop"
    case electronic = "Electronique"
}

struct Album : Identifiable {
    var id = UUID()
    let title: String
    let artist: String
    let cover: String
    let yearRelease: Int
    let genre: Genre
}

struct ContentView: View {
    
    @State private var isAddAlbumPresented = false
    var albums: [Album] = [
        Album(title: "Homework", artist: "DaftPunk", cover: "dpunk", yearRelease: 1997, genre: .electronic),
        Album(title: "Bad", artist: "Michael Jackson", cover: "jackson", yearRelease: 1996, genre: .pop),
        Album(title: "in Utero", artist: "Nirvana", cover: "nirvana", yearRelease: 1993, genre: .rock),
        Album(title: "Aicha", artist: "Cheb Khaled", cover: "khaled", yearRelease: 1998, genre: .pop),
        Album(title: "Enter The Wu-Tang", artist: "WU-Tang", cover: "wutang", yearRelease: 1998, genre: .hiphop),
        Album(title: "L'art De La Fugue", artist: "J-S Bach", cover: "bach", yearRelease: 2000, genre: .classic)]
    
    
    var body: some View {
        TabView {
            //1 ERE SECTION DE LA TAB BAR
            SongListView(albums: albums, isAddAlbumPresented: $isAddAlbumPresented)
            
            //2EME SECTION
            FavorisView()
                
            
            // 3EME SECTION
            ProfilView()
                .tabItem {
                    Label(
                        title: { Text("Profil") },
                        icon: { Image(systemName: "person.fill") }
                    )
                }
        }
        
        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
        }
    }
}

struct AlbumRow: View {
    var album: Album
    
    var body: some View {
        HStack {
            Image(album.cover)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            
            VStack (alignment: .leading) {
                Text(album.title)
                    .font(.title3)
                    .bold()
                Text(album.artist)
                    .foregroundColor(.gray)
                    .font(.headline)
            }
            
            Spacer()
            Text(String(album.yearRelease))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SongListView: View {
    
    var albums: [Album]
    @Binding var isAddAlbumPresented: Bool
    
    var body: some View {
        NavigationView {
            
            List(albums) { item in
                NavigationLink(
                    destination: AlbumDetailView(album: item),
                    label: {
                        AlbumRow(album: item)
                    })
            }.navigationTitle("SpotiList")
            .navigationBarItems(trailing:Button(action: {
                isAddAlbumPresented.toggle()
            },label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $isAddAlbumPresented,
                   content: {
                    // AddAlbumView()
                   })
        }
        .tabItem {
            Label(
                title: { Text("Chansons") },
                icon: { Image(systemName: "music.note") }
            )
        }
    }
}
