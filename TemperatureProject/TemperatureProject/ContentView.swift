//
//  ContentView.swift
//  TemperatureProject
//
//  Created by Mounir SISSANI on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: Double = 25
    // Variable 1 ERE METHODE
    // var backgroundColor: Color { temperature < 20 ? .blue : .red }
    // Fonction
    func backgroundColor() -> Color {
        temperature < 20 ? .blue : .red
    }
    var body: some View {
        ZStack{
            // background
            backgroundColor().ignoresSafeArea()
            VStack {
                switch temperature {
                case -55..<20:
                    Text("il fait froid  ")
                case 20...30:
                    Text("il fait bon")
                default:
                    Text("il fait très chaud")
                }
                
                Text("\(Int(temperature)) °C ")
                Slider(value:$temperature, in: 0...100).padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
