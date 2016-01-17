//
//  VIPAccess.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct VIPAccess: ExternalApplication {
        
        public typealias ActionType = Applications.VIPAccess.Action
        
        public let scheme = "vipsymantec:"
        public let fallbackURL = "https://m.vip.symantec.com/selectediphone.v"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.VIPAccess {
    
    public enum Action {
        case Open
    }
}

extension Applications.VIPAccess.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}

