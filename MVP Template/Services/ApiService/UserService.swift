//
//  UserService.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 09/05/21.
//

import Moya

enum UserService {
    case getUsers(results: Int)
}


extension UserService: TargetType {
    
    /// Base url string for all endpoints in the project.
    static let baseURLString = "https://randomuser.me/api/"
    
    var baseURL: URL { URL(string: UserService.baseURLString)! }
    
    var path: String { return "" }
    
    var method: Method { .get }
    
    var sampleData: Data { .init() }
    
    var task: Task {
        switch self {
        case let .getUsers(number):
            let params = ["results": number]
            return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
    
}
