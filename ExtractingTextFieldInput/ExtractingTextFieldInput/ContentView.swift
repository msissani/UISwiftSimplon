//
//  ContentView.swift
//  ExtractingTextFieldInput
//
//  Created by Mounir SISSANI on 13/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var name = String()
    @State private var email: String = ""
    @State private var phone: String = ""
    
    
    //  @State private var isEditing: Bool = false
    var body: some View {
        VStack{
            ExtractedFieldView(text: "Type your name" , value: $name, keyboardType: .default)
            
            ExtractedFieldView(text: "Type your email", value: $email, keyboardType: .emailAddress)
            
            ExtractedFieldView(text: "Type youe phone", value: $phone, keyboardType: .phonePad)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedFieldView: View {
    var text: String
    @Binding var value: String
    @State var isEditing = false
    var keyboardType: UIKeyboardType
    
    var body: some View {
        HStack {
            
            Text(text).padding()
            
            TextField(
                "your text here",
                text: $value
            ) { isEditing in
                self.isEditing = isEditing
            }
            onCommit: { }
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
            .foregroundColor(isEditing ? .red : .blue)
            .keyboardType(keyboardType)
            
            Spacer()
        }
        Text(value)
    }
}


