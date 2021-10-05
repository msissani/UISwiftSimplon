//
//  BGCColorView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct BGCColorView: View {
    
    @State private var backgroundColor: Color = .white
    @State private var color: Color = .black
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text("COLOR")
                    .font(.largeTitle)
                    .foregroundColor(color)
                HStack {
                    
                    Button(action: {
                        backgroundColor = .red
                        color = .white
                    }, label: {
                        Label(
                            title: { Text("Red") },
                            icon: { Image(systemName: "eyedropper") }
                        )
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    })
                    
                    
                    Button(action: {
                        backgroundColor = .green
                        color = .yellow
                    }, label: {
                        Label(
                            title: { Text("Green") },
                            icon: { Image(systemName: "eyedropper") }
                        )
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    })
                    
                    Button(action: {
                        
                        backgroundColor = .blue
                        color = .red
                        
                    }, label: {
                        Label(
                            title: { Text("Blue") },
                            icon: { Image(systemName: "eyedropper") }
                        )
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    })
                    
                }
            }
        }
    }
}

struct BGCColorView_Previews: PreviewProvider {
    static var previews: some View {
        BGCColorView()
    }
}
