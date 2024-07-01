//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 01.07.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNamberLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person.fullName
        emailLabel.text = person.email
        phoneNamberLabel.text = person.phoneNumber
    }
}
