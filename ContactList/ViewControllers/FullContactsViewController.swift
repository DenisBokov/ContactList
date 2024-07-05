//
//  FullContactsViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 05.07.2024.
//

import UIKit

class FullContactsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    private var persons = Person.getPersonContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension FullContactsViewController: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "fullVisionContacts", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.email
        content.secondaryText = person.phoneNumber
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}
