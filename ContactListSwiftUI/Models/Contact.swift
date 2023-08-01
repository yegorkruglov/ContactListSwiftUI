//
//  Contact.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import Foundation

struct Contact: Identifiable {
    var id = UUID()
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Contact] {
        var contacts: [Contact] = []
        
        var names = DataStore.shared.names.shuffled()
        var surnames = DataStore.shared.surnames.shuffled()
        var phones = DataStore.shared.phones.shuffled()
        var emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for _ in 1...iterationCount {
            let name = names.removeFirst()
            let surname = surnames.removeFirst()
            let phone = phones.removeFirst()
            let email = emails.removeFirst()
            
            let contact = Contact(name: name, surname: surname, phone: phone, email: email)
            contacts.append(contact)
        }
        
        return contacts
    }
    
}
