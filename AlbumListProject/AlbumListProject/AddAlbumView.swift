//
//  AddAlbumView.swift
//  AlbumListProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

import SwiftUI

struct AddAlbumView: View {
    @State private var title: String = ""
    @State private var artist: String = ""
    @State private var year: String = ""
    @State private var cover: String = ""
    @State private var genre: String = ""
    
    //Variable qui permet de fermer la modal lorsque on clique sur "FERMER"
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var albums: [Album]
    
    var body: some View {
        NavigationView {
            
            Form{
                TextFieldView(label: "Titre", textFieldValue: $title, placeHolder: "Entrez un titre")
                
                TextFieldView(label: "Artiste", textFieldValue: $artist, placeHolder: "Entrez le nom d'un artiste")
                
                TextFieldView(label: "Année", textFieldValue: $year, placeHolder: "Entrez l'année")
                
                TextFieldView(label: "Pochette", textFieldValue: $cover, placeHolder: "Entrez la pochette")
                
                TextFieldView(label: "Genre", textFieldValue: $genre, placeHolder: "Entrez le genre de musique")
                
                Button(action: {
                    // addAlbum()
                 //presentationMode.wrappedValue.dismiss()

                }, label: {
                    Text("Sauvegarder")
                })
            }.navigationTitle("AJOUT ALBUM")
            .navigationBarItems(trailing: Button(action: {
                //Ferme la modale
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Fermer")
            }))
        }
    }
    
    func addAlbum() {
        albums.append(Album(title: title, artist: artist, cover: cover, yearRelease: 1992, genre: .pop))
    }
}

struct AddAlbumView_Previews: PreviewProvider {
    static var previews: some View {

        AddAlbumView(albums: .constant([Album(title: "Mike", artist: "MSqd", cover: "toto", yearRelease: 1992, genre: .classic)]))
        
    }
}

struct TextFieldView: View {
    
    let label: String
    @Binding var textFieldValue: String
    let placeHolder: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(label)
                .font(.headline)
                .bold()
            
            TextField(placeHolder, text: $textFieldValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}
