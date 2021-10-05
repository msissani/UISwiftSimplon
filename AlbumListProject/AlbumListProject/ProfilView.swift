//
//  ProfilView.swift
//  AlbumListProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .font(.system(size: 100))
                .padding()
                .background(Circle().foregroundColor(.green))
                .foregroundColor(.white)
            Text("Pierre Sarko")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
