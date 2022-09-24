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
        "Olga", "Anna", "Georg", "Luba"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Shmelenko", "Fisher"
    ]
    
    let emails = [
        "ulala@mail.com", "aaaa@mail.ru", "privet@gmail.com",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "type@xbox.ru", "cool@outlook.com"
    ]
    
    let phoneNumbers = [
        "745-396-026", "145-036-843", "287-185-656", "276-44-83",
        "562-880-225", "738-594-072", "345-44-99", "+7-999-001-44-56"
    ]
    
    private init() {}
}
