//
//  UserCellViewModel.swift
//  MVP Template
//
//  Created by Hasan on 10/05/21.
//

import Foundation

class UserCellViewModel {
    
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
    
    init(_ user: User) {
        self.user = user
    }
}
