//
//  DataStore.swift
//  ContactList
//
//  Created by Egor Kruglov on 26.05.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names: [String] = [
        "Reese",
        "Erik",
        "Deisy",
        "Breann",
        "Anders",
        "Travion",
        "Gunner",
        "Cody",
        "Erin",
        "Baylor",
        "Kaela",
        "Coy",
        "Meredith",
        "Brenden",
        "Alora",
        "Ari",
        "Halie",
        "Kendell",
        "Kim",
        "Gary",
        "Kayle",
        "Jericho",
        "Diamond",
        "Robin",
        "Campbell",
        "Tierra",
        "Daren",
        "Ajay",
        "Breanne",
        "Kain",
        "Jairo",
        "Ervin",
        "Joshua",
        "Derek",
        "Markel",
        "Gracie",
        "Rosa",
        "Karina",
        "Ramsey",
        "Jerome",
        "Alexandria",
        "Judah",
        "Breanna",
        "Jair",
        "Hassan",
        "Shelby",
        "Kade",
        "Sawyer",
        "James",
        "Skylar"
    ]
    let surnames: [String] = [
        "Giles",
        "Kline",
        "Chastain",
        "Wong",
        "Fleck",
        "Bustos",
        "Carver",
        "Harwood",
        "Quinlan",
        "Ralston",
        "Samuel",
        "Taggart",
        "Norris",
        "Golden",
        "Weston",
        "Dutton",
        "Tatum",
        "Juarez",
        "Lozano",
        "Russell",
        "Simmons",
        "Soares",
        "Cutler",
        "Back",
        "Pulido",
        "Nagel",
        "Dao",
        "Perkins",
        "Lincoln",
        "Menard",
        "Phan",
        "Causey",
        "Aparicio",
        "Trejo",
        "Haag",
        "Wilde",
        "Yee",
        "Franco",
        "Cone",
        "Huang",
        "Randolph",
        "Eads",
        "Brower",
        "Swope",
        "Bowen",
        "Longo",
        "Judd",
        "Whitt",
        "Braswell",
        "Lowery"
    ]
    var phones: [String] {
        var phones: [String] = []
        for i in 10...60 {
            let phone = "+7 123 456 78 \(i)"
            phones.append(phone)
        }
        return phones
    }
    
    var emails: [String] {
        var emails: [String] = []
        for i in 1...50 {
            let email = "\(i)@swiftbook.org"
            emails.append(email)
        }
        return emails
    }
    
    private init() {}
}
