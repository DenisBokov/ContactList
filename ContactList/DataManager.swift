//
//  DataManager.swift
//  ContactList
//
//  Created by Denis Bokov on 24.09.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Denis" , "Alex", "Sergay", "Nastya",
        "Olga", "Anna"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler"
    ]
    
    let emails = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru"
    ]
    
    let phoneNumbers = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072"
    ]
    
    private init() {}
}
