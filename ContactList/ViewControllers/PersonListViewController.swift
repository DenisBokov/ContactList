//
//  ViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 26.06.2024.
//

import UIKit

class PersonListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PersonListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        cell.textLabel?.text = "Cell index: \(indexPath.row)"
        return cell
    }
}

