//
//  ContentView.swift
//  ExtractingViewsRecap
//
//  Created by Mounir SISSANI on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            ExtractedView(nameSymbol:"tortoise.fill", colorSymbol: .red)
            ExtractedView(nameSymbol:"megaphone.fill", colorSymbol: .blue)
            ExtractedView(nameSymbol:"hare.fill", colorSymbol: .red)
            ExtractedView(nameSymbol:"speaker.wave.2.fill", colorSymbol: .blue)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let nameSymbol: String
    let colorSymbol: Color
    var body: some View {
        Spacer()
        Image(systemName:nameSymbol).framedStyle(color: colorSymbol)
        
        Spacer()
    }
}

extension View {
    func framedStyle(color: Color) -> some View {
        self.foregroundColor(.white)
            .padding(.horizontal)
            .frame(width: 60, height: 35)
            .background(color)
            .cornerRadius(10.0)
    }
}
