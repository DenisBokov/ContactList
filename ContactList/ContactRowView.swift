//
//  ContactRowView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct ContactRowView: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
                .frame(width: 300, alignment: .leading)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(person: Person(name: "One", surname: "Two", email: "Free", phoneNumber: "Random"))
    }
}
