//
//  ContentView.swift
//  ListsViewProject
//
//  Created by Mounir SISSANI on 14/09/2021.
//

//LIST STATIQUE COURS

import SwiftUI

struct ContentView: View {
    private var friends = ["Steve",
                           "Melissa",
                           "The doctor",
                           "DBZ",
                           "TOTO"]
    
    var body: some View {
        List{
            Group {
                FriendRow(name: friends[0])
                FriendRow(name: friends[1])
                FriendRow(name: friends[2])
                FriendRow(name: friends[3])
                FriendRow(name: friends[3])
                FriendRow(name: friends[1])
                FriendRow(name: friends[2])
                FriendRow(name: friends[1])
                FriendRow(name: friends[3])
                FriendRow(name: friends[2])
            }
 
            Group{
                FriendRow(name: friends[4])
                FriendRow(name: friends[1])
                FriendRow(name: friends[3])
                FriendRow(name: friends[3])
                FriendRow(name: friends[1])
                FriendRow(name: friends[2])
                FriendRow(name: friends[1])
                FriendRow(name: friends[3])
                FriendRow(name: friends[2])
            }
        }

    }
    
    struct FriendRow: View {
        var name: String
        
        var body: some View {
            HStack{
                Text("Friend: \(name)")
                    .padding()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
