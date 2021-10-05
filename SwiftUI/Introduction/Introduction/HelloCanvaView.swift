//
//  HelloCanvaView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct HelloCanvaView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
            Text("My first SwiftUI app")
                .font(.headline)
        
            Spacer()
            
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 30))
                Text("Sweet")
                    .foregroundColor(.orange)
                    .font(.title)
            }.padding()
            .border(Color.green)
    
            Spacer()
        })
    }


struct HelloCanvaView_Previews: PreviewProvider {
    static var previews: some View {
        HelloCanvaView()
    }
}

}
