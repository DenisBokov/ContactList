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
        NavigationStack {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack {
                    HStack {
                        Image(systemName: "phone")
                            .font(.title)
                            .padding()
                        Text(person.phoneNumber)
                            .font(.title)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "tray")
                            .font(.title)
                            .padding()
                        Text(person.email)
                            .font(.title)
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle(person.fullName)
        }
    }
}

struct DetailsPersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPersonInfoView(person: Person(name: "Ivan", surname: "Petrov", email: "errr@email.com", phoneNumber: "3244324"))
    }
}
