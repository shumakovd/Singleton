//
//  Singleton.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit
import Foundation

/// The Singleton class defines the `shared` field that lets clients access the
/// unique singleton instance.
class Singleton {

    /// The static field that controls the access to the singleton instance.
    ///
    /// This implementation let you extend the Singleton class while keeping
    /// just one instance of each subclass around.
    static var shared: Singleton = {
        let instance = Singleton()
        // ... configure the instance
        // ...
        return instance
    }()

    /// The Singleton's initializer should always be private to prevent direct
    /// construction calls with the `new` operator.
    private init() {}

    /// Finally, any singleton should define some business logic, which can be
    /// executed on its instance.
    func someBusinessLogic() -> String {
        // ...
        return "Result of the 'someBusinessLogic' call"
    }
}

/// Singletons should not be cloneable.
extension Singleton: NSCopying {

    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
