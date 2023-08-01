//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Egor Kruglov on 01.08.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    var contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 240, height: 240, alignment: .center)
                Spacer()
            }
            HStack {
                Image(systemName: "phone").foregroundColor(Color.accentColor)
                Text(contact.phone)
            }
            HStack {
                Image(systemName: "envelope").foregroundColor(Color.accentColor)
                Text(contact.email)
            }
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContactList().first!)
    }
}
