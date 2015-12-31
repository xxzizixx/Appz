//
//  Itranslate.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/27/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Itranslate: ExternalApplication {
        
        public typealias ActionType = Applications.Itranslate.Action
        
        public let scheme = "itranslate:"
        public let fallbackURL = "http://itranslateapp.com/"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Itranslate {
    
    public enum Action {
        
        case Open
        case Translate(from: String, to: String, text: String)
    }
}


extension Applications.Itranslate.Action: ExternalApplicationAction {
    
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
            
        case .Translate(let from, let to, let text):
            return ActionPaths(
                app: Path(
                    pathComponents: ["translate"],
                    queryParameters: [
                        "from": from,
                        "to": to,
                        "text": text
                    ]
                ),
                web: Path()
            )
        }
    }
}