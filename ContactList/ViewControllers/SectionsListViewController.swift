//
//  SectionsListViewController.swift
//  ContactList
//
//  Created by Максим Назаров on 14.09.2024.
//

import UIKit

final class SectionsListViewController: UITableViewController {
    
    var contacts: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        2
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
        
        switch indexPath.row {
        case 0:
            content.text = contacts[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contacts[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullname
    }
    
}


