//
//  UserCellViewModel.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 10/05/21.
//

import Foundation

struct UserCellViewModel {
    
    private let user: User
    
    var name: String {
        user.name.first + " " + user.name.last
    }
    var address: String {
        user.location.city
    }
    var phone: String {
        user.phone
    }
    var thumbnailUrl: URL? {
        URL(string: user.picture.thumbnail)!
    }
    
    
    init(_ user: User) {
        self.user = user
    }
}
