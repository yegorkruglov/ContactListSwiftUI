//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Egor Kruglov on 01.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    private var contacts = Contact.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
