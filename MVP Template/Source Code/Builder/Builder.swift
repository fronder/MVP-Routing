//
//  Builder.swift
//  ReshootPro
//
//  Created by Uladzislau Vasilyeu on 2/10/21.
//

struct Builder {
    private init() {}
}

extension Builder {
    struct Scene<T: BuildableScene> {
        static func make(with params: T.InitialParams) -> T {
            return T.build(with: params) as! T
        }
    }
}

extension Builder {
    struct Coordinator<T: BuildableCoordinator> {
        static func make(with params: T.InitialParams) -> T {
            return T.build(with: params) as! T
        }
    }
}

extension Builder {
    struct Router<T: BuildableRouter> {
        static func make(with params: T.InitialParams) -> T {
            return T.build(with: params) as! T
        }
    }
}
