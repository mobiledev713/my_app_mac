//
//  ContentView.swift
//  My App
//
//  Created by admin on 7/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var ageIndex = 0
    
    var body: some View {
        VStack(content: {
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("First Name: ")
                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }).padding()
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("Last Name: ")
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }).padding()
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                    Text("GENDER: ")
            }).padding()
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("AGE: ")
                Menu {
                    Button(action: { ageIndex = 0 }, label: {
                        Text("Young")
                    })
                    Button(action: { ageIndex = 1 }, label: {
                        Text("Adult")
                    })
                    Button(action: { ageIndex = 2 }, label: {
                        Text("Old")
                    })
                } label: {
                    Text("Young")
                }
            }).padding()
            HStack(alignment: .center, spacing: nil, content: {
                Button("SUBMIT") {
                    
                }
            }).padding()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
