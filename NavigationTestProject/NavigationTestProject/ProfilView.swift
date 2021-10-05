//
//  ProfilView.swift
//  NavigationTestProject
//
//  Created by Vincent Qian on 14/09/2021.
//

import SwiftUI

struct ProfilView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .font(.system(size: 100))
                .padding()
                .background(Circle().foregroundColor(.blue))
                .foregroundColor(.white)
            Text("Jean Castex")
                .font(.title)
                .bold()
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
