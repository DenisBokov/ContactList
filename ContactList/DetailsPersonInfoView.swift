//
//  DetailsPersonInfoView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct DetailsPersonInfoView: View {
    let person: Person
    
    var body: some View {
        NavigationView {
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .center)
                    .padding()
                ImageAndTextView(
                    phoneNumber: person.phoneNumber,
                    email: person.email
                )
                .font(.headline)
            }
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailsPersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPersonInfoView(person: Person(name: "Ivan", surname: "Petrov", email: "errr@email.com", phoneNumber: "3244324"))
    }
}
