//
//  Name.swift
//  MVP Template
//
//  Created by Hasan on 09/05/21.
//

import Foundation

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
    
    private enum CodingKeys: String, CodingKey {
        case title, first, last
    }
}
