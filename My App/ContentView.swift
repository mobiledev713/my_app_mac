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
    @State private var gender = "Male"
    @State private var showingAlert = false
    
    let genders = ["Male", "Female"]
    
    var body: some View {
        VStack(alignment: .center, content: {
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("First Name: ")
                    .frame(width: 100)
                TextField("First Name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            })
            .padding()
            
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("Last Name: ")
                    .frame(width: 100)
                TextField("Last Name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            })
            .padding()
            
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("Gender: ")
                    .frame(width: 100)
                Picker("", selection: $gender) {
                    Text(genders[0])
                    Text(genders[1])
                }
                .pickerStyle(RadioGroupPickerStyle())
                .horizontalRadioGroupLayout()
                Spacer()
            })
            .padding()
            
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("AGE: ")
                    .frame(width: 100)
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
            })
            .padding()
            
            HStack(alignment: .center, spacing: nil, content: {
                Button("SUBMIT") {
                    showingAlert = true
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
