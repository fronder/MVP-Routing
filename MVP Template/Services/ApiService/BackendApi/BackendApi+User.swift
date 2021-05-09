//
//  BackendApi+User.swift
//  MVP Template
//
//  Created by Hasan on 09/05/21.
//

import Moya

extension BackendAPI {
    class UserApi: BaseAPI {
        private lazy var provider: MoyaProvider<UserService> = {
            let provider = MoyaProvider<UserService>()
            provider.session.sessionConfiguration.timeoutIntervalForRequest = 300
            
            return provider
        }()
        
        private struct UsersResponse: Decodable {
            let result: [User]
            
            enum CodingKeys: String, CodingKey {
                case result = "results"
            }
        }
        
        
        func request(onSuccess: @escaping ([User]) -> Void,
                     onError: @escaping OnErrorCompletion) {
            provider.request(.getUsers(results: 30)) { (result) in
                
                BaseAPI.mapResult(result, intoItemOfType: UsersResponse.self, onSuccess: { response in
                    onSuccess(response.result)
                }, onError: onError)
            }
        }
    }
}
