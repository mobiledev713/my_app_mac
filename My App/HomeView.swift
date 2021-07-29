//
//  HomeView.swift
//  My App
//
//  Created by Vasyl on 7/22/21.
//

import SwiftUI

enum Gender: Int, CaseIterable, Identifiable {
    case male
    case female
    
    var id: Int { self.rawValue }
}

enum Age: Int, CaseIterable, Identifiable {
    case young
    case adult
    case old
    
    var id: Int { self.rawValue }
}

struct HomeView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var age = Age.young
    @State private var gender = Gender.male
    @State private var showingAlert = false
    @State private var resultString = ""
    
    let genders = ["Male", "Female"]
    let ages = ["Young", "Adult", "Old"]
    
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
                    Text("Male").tag(Gender.male)
                    Text("Female").tag(Gender.female)
                }
                .pickerStyle(RadioGroupPickerStyle())
                .horizontalRadioGroupLayout()
                Spacer()
            })
            .padding()
            
            HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                Text("Age: ")
                    .frame(width: 100)
                Menu {
                    Button(action: { age = Age.young }, label: {
                        Text("Young")
                    })
                    Button(action: { age = Age.adult }, label: {
                        Text("Adult")
                    })
                    Button(action: { age = Age.old }, label: {
                        Text("Old")
                    })
                } label: {
                    Text(ages[age.rawValue])
                }
            })
            .padding()
            
            HStack(alignment: .center, spacing: nil, content: {
                Button("Submit") {
                    showingAlert = true
                    resultString = "Hello \(firstName) \(lastName), you are a \(ages[age.rawValue]) \(genders[gender.rawValue])"
                    firstName = ""
                    lastName = ""
                    age = Age.young
                    gender = Gender.male
                }
                .alert(isPresented: $showingAlert, content: {
                    Alert(title: Text(""), message: Text(resultString), primaryButton: .default(Text("Quit"), action: {
                        NSApp.terminate(self)
                    }), secondaryButton: .cancel(Text("Try Again")))
                })
            }).padding()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
