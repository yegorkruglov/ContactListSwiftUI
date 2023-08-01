//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Egor Kruglov on 01.08.2023.
//

import SwiftUI

struct NumbersView: View {
    
    var contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    HStack {
                        Image(systemName: "phone").foregroundColor(Color.accentColor)
                        Text(contact.phone)
                    }
                    HStack {
                        Image(systemName: "envelope").foregroundColor(Color.accentColor)
                        Text(contact.email)
                    }
                }
            }
            .navigationTitle("Numbers")
            .listStyle(.plain)
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Contact.getContactList())
    }
}
