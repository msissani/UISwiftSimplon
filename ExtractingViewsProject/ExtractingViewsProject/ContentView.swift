//
//  ContentView.swift
//  ExtractingViewsProject
//
//  Created by Mounir SISSANI on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var switchColor1 = false
    @State private var switchColor2 = false
    @State private var switchColor3 = false
    @State private var switchColor = false


    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            
            Spacer()
            ExtractedView(symbolName: "d.circle.fill" , symbolColor: .orange, textName: "Danilo Santant", switchColor: $switchColor1)
            ExtractedView(symbolName: "g.circle.fill" , symbolColor: .purple, textName: "Gilles deteel", switchColor: $switchColor2)
            ExtractedView(symbolName: "m.circle.fill" , symbolColor: .purple, textName: "Mark Nicholes", switchColor: $switchColor3)
            
            Spacer()
            
            ExtractedView(symbolName: "v.circle.fill" , symbolColor: .green, textName: "Go vegan ",  switchColor: $switchColor)
            ExtractedView(symbolName: "m.circle.fill" , symbolColor: .red, textName: "Go meat ",switchColor: $switchColor)
            ExtractedView(symbolName: "b.circle.fill" , symbolColor: .yellow, textName: "Go Beer ",switchColor: $switchColor)
            
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let symbolName: String
    let symbolColor: Color
    let textName: String
    @Binding var switchColor: Bool
    
    var body: some View {
        HStack {
            Image(systemName: symbolName)
                .foregroundColor(symbolColor)
            Text(textName).foregroundColor(switchColor ? .red : .blue)
            Spacer()
            Toggle(isOn: $switchColor, label: {
                Text("")
            }).labelsHidden()
            
        }.font(.title)
        .padding(.horizontal)
    }
}
