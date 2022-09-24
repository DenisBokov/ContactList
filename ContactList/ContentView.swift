//
//  ContentView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumberFullListView(persons: persons)
                .tabItem {
                    Image(systemName: "teletype.answer")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
