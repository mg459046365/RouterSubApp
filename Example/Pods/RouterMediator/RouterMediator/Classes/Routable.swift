//
//  Routable.swift
//  LXCamera
//
//  Created by Beryter on 2019/8/21.
//  Copyright © 2019 sensoro. All rights reserved.
//

import Foundation
import UIKit

public class RouterMediator {
    public static let shared = RouterMediator()
    public func initTarget(_ router: Routable) -> RouterTarget {
        return router.routerTarget
    }
}

/// 路由
public protocol Routable {
    /// 目标
    var routerTarget: RouterTarget { get }
}

/// 路由目标
public enum RouterTarget {
    case controller(UIViewController)
    case view(UIView)
    case url(URL)
    case none
}

public enum MultiRouter: Routable {
    case router(Routable)

    public init(_ router: Routable) {
        self = MultiRouter.router(router)
    }

    var router: Routable {
        switch self {
        case let .router(router):
            return router
        }
    }

    public var routerTarget: RouterTarget {
        router.routerTarget
    }
}
