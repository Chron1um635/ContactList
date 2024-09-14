//
//  ViewController.swift
//  ContactList
//
//  Created by Максим Назаров on 13.09.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let contacts = Contact.getContacts()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? ContactDetailsViewController
        detailsVC?.contact = contacts[indexPath.row]
    }
}

// MARK: UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCell",
            for: indexPath
        )
        var content = cell.defaultContentConfiguration()
        content.text = contacts[indexPath.row].fullname
        
        cell.contentConfiguration = content
        return cell
    }
}
