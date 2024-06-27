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
        var uniquePersons: [Person] = []
        let count = 100
        
        for _ in 0...count {
            persons.append(Person(
                firstName: DataStore().firstNames.randomElement() ?? "",
                lastName: DataStore().lastNames.randomElement() ?? "",
                email: DataStore().emails.randomElement() ?? "",
                phoneNumber: DataStore().telephoneNumbers.randomElement() ?? "")
            )
        }
        
        for person in persons {
            if !uniquePersons.contains(where: { $0.firstName == person.firstName }) {
                uniquePersons.append(person)
            }
        }

        
        
        return uniquePersons
    }
}
