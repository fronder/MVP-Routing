//
//  User.swift
//  MVP Template
//
//  Created by Hasan on 09/05/21.
//

import Foundation

//struct UserResults: Decodable {
//    let result: User
//    let info: Info
//
//    private enum CodingKeys: String, CodingKey {
//        case result, info
//    }
//}

//struct Info: Decodable {
//    let seed: String
//    let results: Int
//    let page: Int
//    let version: String
//
//    private enum CodingKeys: String, CodingKey {
//        case seed, results, page, version
//    }
//}

struct User: Decodable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob: Dob
    let registered: Registered
    let phone: String
    let cell: String
    let id: ID
    let picture: Picture
    let nat: String
    
    private enum CodingKeys: String, CodingKey {
        case gender, name, location, email, login, dob, registered, phone, cell, id, picture, nat
    }
}

struct Login: Decodable {
    let uuid: String
    let username: String
    let password: String
    let salt: String
    let md5: String
    let sha1: String
    let sha256: String
    
    private enum CodingKeys: String, CodingKey {
        case uuid, username, password, salt, md5, sha1, sha256
    }
}

struct Dob: Decodable {
    let date: String
    let age: Int
    
    private enum CodingKeys: String, CodingKey {
        case date, age
    }
}

struct Registered: Decodable {
    let date: String
    let age: Int
    
    private enum CodingKeys: String, CodingKey {
        case date, age
    }
}

struct ID: Decodable {
    let name: String
    let value: String?
    
    private enum CodingKeys: String, CodingKey {
        case name, value
    }
}

struct Picture: Decodable {
    let large: String
    let medium: String
    let thumbnail: String
    
    private enum CodingKeys: String, CodingKey {
        case large, medium, thumbnail
    }
}
