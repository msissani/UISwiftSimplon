//
//  ContentView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName:"person.fill")
                .font(.largeTitle)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Hello, mounir!")
                    .foregroundColor(.red)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("YEEEAH")
                    .padding(10)
                    .background(Color.blue)
                    
            }
        }
    }
    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}
}

