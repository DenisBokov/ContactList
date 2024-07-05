//
//  FullContactsViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 05.07.2024.
//

import UIKit

class FullContactsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var persons: [Person] = []
    
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
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.email
            content.image = UIImage(systemName: "tray.circle.fill")
        } else {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.circle.fill")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}
