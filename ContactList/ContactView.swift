//
//  ContactView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct ContactView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.self) { person in
                NavigationLink(destination: DetailsPersonInfoView(person: person)) {
                    ContactRowView(person: person)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
