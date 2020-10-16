//
//  RouterSubAppRouter.swift
//  RouterSubApp
//
//  Created by Beryter on 2020/10/17.
//

import Foundation
import RouterMediator

public enum RouterSubAppRouter {
    case skip(String)
    case none
}

extension RouterSubAppRouter: Routable {
    public var routerTarget: RouterTarget {
        switch self {
        case let .skip(val):
            let vc = RouterSubAppController()
            vc.proteryName = val
            return .controller(vc)
        case .none:
            return .none
        }
    }
}
