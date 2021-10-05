//
//  AddAlbumView.swift
//  NavigationTestProject
//
//  Created by Vincent Qian on 14/09/2021.
//

import SwiftUI

struct AddAlbumView: View {
    
    @State private var title : String = ""
    @State private var artist : String = ""
    @State private var genre : Genre = Genre.classic
    @State private var annee : String = ""
    @State private var pochette : String = ""
    
    @Environment(\.presentationMode) var presentationMode // permet de changer fermer la sheet et revenir en arrière 
    
    @Binding var albums : [Album]
    
    var body: some View {
        NavigationView {
            Form{
                TextFieldView(titre: "Titre",textFieldValue: $title , placeHolder: "Entrez un titre")
                TextFieldView(titre: "Artiste",textFieldValue: $artist , placeHolder: "Entrez un artiste")
                TextFieldView(titre: "Année",textFieldValue: $annee , placeHolder: "Entrez une année")
//                TextFieldView(titre: "Genre",textFieldValue: $genre , placeHolder: "Entrez un genre")
                TextFieldView(titre: "Pochette",textFieldValue: $pochette , placeHolder: "Entrez une pochette")
                Button(action: {
                    addAlbum()
                    presentationMode.wrappedValue.dismiss() // fermer la sheet
                }, label: {
                    Text("Sauvegarder")
                })
            }.navigationTitle("Ajout Album")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Fermer")
            }))
            
        }
    }
    
    func addAlbum() {
        albums.append(Album( title: title, artist: artist, cover: pochette, year: Int(annee) ?? 0, genre: genre))
        //Corriger conversion de annee en Int
    }
}

struct AddAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlbumView(albums: .constant([
                        Album(title: "Homework", artist: "Daft Punk", cover: "daft", year: 1997, genre: .electronic),
                        
                        Album(title: "Bad", artist: "Michael Jackson", cover: "mj", year: 1997, genre: .pop)]))
            .previewDevice("iPhone 12")
    }
}

struct TextFieldView: View {
    
    let titre : String
    @Binding var textFieldValue : String
    let placeHolder : String
    
    var body: some View {
        VStack (alignment: .leading){
            Text(titre)
                .font(.headline)
                .bold()
            TextField(placeHolder, text: $textFieldValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}
