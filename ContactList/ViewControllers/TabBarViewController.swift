//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Denis Bokov on 05.07.2024.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPersonContact()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }

    private func setupViewControllers() {
        
        guard let personListNC = viewControllers?.first as? UINavigationController else { return }
        guard let personListVC = personListNC.topViewController as? PersonListViewController else { return }
        personListVC.persons = persons
        
        guard let fullContactNC = viewControllers?.last as? UINavigationController else { return }
        guard let fullContactVC = fullContactNC.topViewController as? FullContactsViewController else { return }
        fullContactVC.persons = persons
    }
}
                        
