//
//  KnockKnockView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct KnockKnockView: View {
    
    var names : [String] = ["Jojo","Toto","Momo","Coco","Lolo"]
    @State private var name: String = ""
// 1 ERE METHODE
 //   @State private var randomID: Int = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Knock knock").padding()
          //  Text("\(names[randomID])")
            Text(name)

            Button("Who is there?"){
                //randomID = Int.random(in: 0..<names.count)
                name = names.randomElement()!
            }.padding()
            .background(Color.blue)
            .foregroundColor(.white)
            
            Spacer()
        }
    }
}

struct KnockKnockView_Previews: PreviewProvider {
    static var previews: some View {
        KnockKnockView()
    }
}
