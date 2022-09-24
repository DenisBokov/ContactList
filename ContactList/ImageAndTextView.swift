//
//  ImageAndTextView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct ImageAndTextView: View {
    let phoneNumber: String
    let email: String
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(phoneNumber)
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(email)
        }
    }
}

struct ImageAndTextView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndTextView(phoneNumber: "324342", email: "rrr@mail.com")
    }
}
