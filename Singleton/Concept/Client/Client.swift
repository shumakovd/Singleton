//
//  Client.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// The client code.
class Client {
    // ...
    static func someClientCode() {
        let instance1 = Singleton.shared
        let instance2 = Singleton.shared

        if (instance1 === instance2) {
            print("Singleton works, both variables contain the same instance.")
        } else {
            print("Singleton failed, variables contain different instances.")
        }
    }
    // ...
}
