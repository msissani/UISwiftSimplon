//
//  ContentView.swift
//  ExtractingPhonePadView
//
//  Created by Mounir SISSANI on 13/09/2021.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        
        
        VStack {
            HStack {
                LineView(number: "1", letters: " ", isSymbolButton: true)
                LineView(number: "2", letters: "ABC", isSymbolButton: false)
                LineView(number: "3", letters: "DEF", isSymbolButton: false)
                Spacer()
            }.foregroundColor(.gray)
            .padding()
            
            HStack {
                LineView(number: "4", letters: "GHI", isSymbolButton: false)
                LineView(number: "5", letters: "JKL", isSymbolButton: false)
                LineView(number: "6", letters: "MNO", isSymbolButton: false)
                Spacer()
            }.foregroundColor(.gray)
            .padding()
            
            HStack {
                LineView(number: "7", letters: "PQRS", isSymbolButton: false)
                LineView(number: "8", letters: "TUV", isSymbolButton: false)
                LineView(number: "9", letters: "WXYZ", isSymbolButton: false)
                Spacer()
            }.foregroundColor(.gray)
            .padding()
            
            HStack(alignment: .center) {
                LineView(number: "*", letters: "", isSymbolButton: true)
                LineView(number: "0", letters: "+", isSymbolButton: false)
                LineView(number: "#", letters: "", isSymbolButton: true)
                Spacer()
            }.foregroundColor(.gray)
            .padding()
            
            Image(systemName: "phone.circle.fill")
                    .foregroundColor(.green)
                    .font(.system(size: 55))
                    .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LineView: View {
    var number: String
    var letters: String
    var isSymbolButton: Bool
    
    var body: some View {

        Spacer()
        
        Button(action: {
               
        }, label: {
            ZStack (alignment: .center) {
                
                Circle()
                Text(number)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.bottom)
                Text(letters)
                    .font(.caption2)
                    .foregroundColor(.black)
                    .padding(isSymbolButton ? .bottom : .top)
            }.frame(width: 60, height: 60)
        })
        
        /*      Text("123")
         .padding()
         .font(.title)
         .background(Color.gray)
         .clipShape(Circle())
         .foregroundColor(.black)
         */
    }
}
