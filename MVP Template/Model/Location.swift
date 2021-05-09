//
//  Location.swift
//  MVP Template
//
//  Created by Hasan on 09/05/21.
//

import Foundation

struct Location: Decodable {
    let street: Street
    let city: String
    let state: String
    let country: String
//    let postcode: Int?
    let coordinates: Coordinates
    let timezone: Timezone

    private enum CodingKeys: String, CodingKey {
        case street, city, state, country, coordinates, timezone
    }
}

struct Street: Decodable {
    let number: Int
    let name: String
    
    private enum CodingKeys: String, CodingKey {
        case number, name
    }
}

struct Coordinates: Decodable {
    let latitude: String
    let longitude: String
    
    private enum CodingKeys: String, CodingKey {
        case latitude, longitude
    }
}

struct Timezone: Decodable {
    let offset: String
    let description: String
    
    private enum CodingKeys: String, CodingKey {
        case offset, description
    }
}
