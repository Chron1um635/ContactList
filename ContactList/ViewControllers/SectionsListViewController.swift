//
//  SectionsListViewController.swift
//  ContactList
//
//  Created by Максим Назаров on 14.09.2024.
//

import UIKit

final class SectionsListViewController: UITableViewController {
    
    private var contacts: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationVC = tabBarController?.viewControllers?.first as? UINavigationController
        let contactsVC = navigationVC?.viewControllers.first as? ContactListViewController
        contacts = contactsVC?.contacts
        tableView.allowsSelection = false
    }
    
}
// MARK: UITableViewDataSource
extension SectionsListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        1
    }
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCell",
            for: indexPath
        )
        
        var content = cell.defaultContentConfiguration()
        content.text = "Phone: \(contacts[indexPath.section].phone)"
        content.secondaryText = "Email: \(contacts[indexPath.section].email)"
        
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullname
    }
    
}


