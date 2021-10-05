//
//  IncrementView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct IncrementView: View {
    @State var pourcentage = 0.5
    
    var body: some View {
        VStack {
            Text("\(pourcentage * 100.00)%")
            
            //1ERE METHODE
            Button("Incrémenter") {
                self.pourcentage += 0.01
            }
            
            HStack {
                //2EME METHODE
                Button(action: {
                        self.pourcentage -= 0.01
                }, label:{
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                })
                
                //POURCENTAGE PERMET DE FAIRE DU BINDING
                Slider(value: $pourcentage, in: 0...1).padding()
                
                Button(action: {
                        self.pourcentage += 0.01
                }, label:{
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                })
            }.padding()
        }
    }
}

struct IncrementView_Previews: PreviewProvider {
    static var previews: some View {
        IncrementView()
            
    }
}
