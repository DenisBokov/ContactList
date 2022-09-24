//
//  NumberFullListView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct NumberFullListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                Section(header: Text(person.fullName)) {
                    ImageAndTextView(
                        phoneNumber: person.phoneNumber,
                        email: person.email
                    )
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumberFullListView_Previews: PreviewProvider {
    static var previews: some View {
        NumberFullListView(persons: Person.getContactList())
    }
}
