//
//  NumberView.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import SwiftUI

struct NumberView: View {
    var body: some View {
        Image(systemName: "teletype.answer")
            .resizable()
            .frame(width: 100, height: 60)
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
