//
//  ContentView.swift
//  EzFlat
//
//  Created by Juan Salgado, Dennis Corral, Matthew Robinson.
//

import SwiftUI

struct ContentView: View {
    @State private var businessName = ""
    @State private var businessAddress = ""
    @State private var businessCity = ""
    @State private var businessState = ""
    @State private var businessZipCode = ""
    @State private var businessEmail = ""
    @State private var businessPhone = ""
    @State private var businessHours = ""

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Enter Business Information")) {
                        TextField("Name", text: $businessName)
                        TextField("Address", text: $businessAddress)
                        TextField("City", text: $businessCity)
                        TextField("State", text: $businessState)
                        TextField("Zip Code", text: $businessZipCode)
                        TextField("Email Address", text: $businessEmail)
                            .keyboardType(.emailAddress)
                        TextField("Phone", text: $businessPhone)
                            .keyboardType(.phonePad)
                        TextField("Hours", text: $businessHours)
                    }
                }
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: MapScreen()) {
                        VStack {
                            Image(systemName: "map")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("Map")
                                .font(.caption)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: SettingsScreen()) {
                        VStack {
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("Settings")
                                .font(.caption)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("EzFlat ℠")
        }
    }
}

struct MapScreen: View {
    var body: some View {
        Text("Map Screen")
            .font(.largeTitle)
            .navigationTitle("Map")
    }
}

struct SettingsScreen: View {
    var body: some View {
        Text("Settings Screen")
            .font(.largeTitle)
            .navigationTitle("Settings")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
