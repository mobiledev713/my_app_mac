//
//  ContentView.swift
//  My App
//
//  Created by admin on 7/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            HStack(alignment: .firstTextBaseline, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text("First Name: ")
                
            }).padding()
            HStack(alignment: .firstTextBaseline, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text("Last Name: ")
            }).padding()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
