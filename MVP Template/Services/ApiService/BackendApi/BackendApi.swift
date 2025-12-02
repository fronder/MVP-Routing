//
//  BackendApi.swift
//  MVP Template
//
//  Created by Hasan Abdullaev on 09/05/21.
//

import Foundation

import Moya

enum BackendAPI {
    typealias JSON = [String: Any]

    class BaseAPI {
        typealias OnErrorCompletion = (_ errorCode: Int, _ errorMessage: String) -> Void

        private var requests: [Cancellable]?

        var request: Cancellable? {
            set(value) { if let value = value { requests?.append(value) } }
            get { return requests?.last }
        }

        static func mapResult<T: Decodable>(_ result: Result<Response, MoyaError>,
                                            intoItemOfType _: T.Type,
                                            onSuccess: (T) -> Void,
                                            onError: OnErrorCompletion) {
            switch result {
            case let .success(moyaResponse):
                do {
                    _ = try moyaResponse.filterSuccessfulStatusCodes()
                    let data = moyaResponse.data
                    
                    let result = try JSONDecoder().decode(T.self, from: data)
                    onSuccess(result)
                } catch {
                    print(error)
                    onError((error as? MoyaError)?.response?.statusCode ?? 0, error.localizedDescription)
                }
            case let .failure(error):
                print(error)
                onError(error.response?.statusCode ?? 0, error.localizedDescription)
            }
        }

        deinit {
            _ = requests?.map { request in
                guard !request.isCancelled else { return }
                request.cancel()
            }

            requests?.removeAll()
        }
    }
    
    struct SuccessResponse: Decodable {
        let success: Bool

        enum CodingKeys: String, CodingKey {
            case success
        }
    }
}

