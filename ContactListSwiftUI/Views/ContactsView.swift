//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Egor Kruglov on 01.08.2023.
//

import SwiftUI

struct ContactsView: View {
    var contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle(Text("Contacts"))
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Contact.getContactList())
    }
}
