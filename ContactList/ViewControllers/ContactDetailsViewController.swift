//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Максим Назаров on 13.09.2024.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contact.fullname
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
        
    }

}
