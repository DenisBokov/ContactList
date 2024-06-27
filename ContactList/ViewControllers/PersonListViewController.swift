//
//  ViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 26.06.2024.
//

import UIKit

class PersonListViewController: UIViewController {
    var personList = Person.getPersonContact()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PersonListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}

