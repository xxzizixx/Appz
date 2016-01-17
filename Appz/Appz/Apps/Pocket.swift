//
//  Pocket.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Pocket: ExternalApplication {
        
        public typealias ActionType = Applications.Pocket.Action
        
        public let scheme = "pocket:"
        public let fallbackURL = "https://getpocket.com/ios/?ep=1"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Pocket {
    
    public enum Action {
        case Open
    }
}

extension Applications.Pocket.Action: ExternalApplicationAction {
    
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
