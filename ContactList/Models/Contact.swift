//
//  Contact.swift
//  ContactList
//
//  Created by Максим Назаров on 13.09.2024.
//

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        let data = DataStore()
        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        var contacts: [Contact] = []
        
        let minCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<minCount {
            contacts.append(
                Contact(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        return contacts
    }
}
