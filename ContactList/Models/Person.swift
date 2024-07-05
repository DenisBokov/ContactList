//
//  Person.swift
//  ContactList
//
//  Created by Denis Bokov on 27.06.2024.
//


struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonContact() -> [Person] {
        
        var persons: [Person] = []
    
        let firstNames = DataStore.shared.firstNames.shuffled()
        let lastNames = DataStore.shared.lastNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.telephoneNumbers.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
