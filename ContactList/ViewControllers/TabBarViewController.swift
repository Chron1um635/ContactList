//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Максим Назаров on 16.09.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewControllers()
    }
    
    private func updateViewControllers() {
        let contacts = Contact.getContacts()
        let contactListVC = viewControllers?.first as? ContactListViewController
        let sectionsVC = viewControllers?.last as? SectionsListViewController
        
        contactListVC?.contacts = contacts
        sectionsVC?.contacts = contacts
    }
}
