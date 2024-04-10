//
//  User.swift
//  messenger
//
//  Created by Пользователь on 09.04.2024.
//

import Foundation

struct User: Codable, Identifiable, Hashable{
    var id = NSUUID().uuidString
    let fullnane: String
    let email: String
    var profileImageURL: String?
}

extension User{
    static let MOCK_USER = User(fullnane: "Name Person",
                                email: "person@gmail.com",
                                profileImageURL: "personImage")
}
