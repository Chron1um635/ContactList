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
    
    static func getContacts() -> [Contact]{
        let data = DataStore()
        var contacts: [Contact] = []
        let minCount = min(
            data.phones.count,
            data.surnames.count,
            data.phones.count,
            data.emails.count
        )
        for _ in 0..<minCount {
            let name = data.names.remove(
                at: Int.random(in: 0..<data.names.count)
            )
            let surname = data.surnames.remove(
                at: Int.random(in: 0..<data.surnames.count)
            )
            let email = data.emails.remove(
                at: Int.random(in: 0..<data.emails.count)
            )
            let phone = data.phones.remove(
                at: Int.random(in: 0..<data.phones.count)
            )
            contacts.append(
                Contact(
                    name: name,
                    surname: surname,
                    phone: phone,
                    email: email
                )
            )
        }
        
        return contacts
    }
}
