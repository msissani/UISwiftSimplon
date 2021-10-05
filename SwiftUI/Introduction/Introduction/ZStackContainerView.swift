//
//  ZStackContainerView.swift
//  Introduction
//
//  Created by Mounir SISSANI on 10/09/2021.
//

import SwiftUI

struct ZStackContainerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.red)
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 200, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Santana")
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ZStackContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackContainerView()
    }
}
