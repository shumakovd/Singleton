//
//  MessageSubscriber.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// Protocol for call-back events

protocol MessageSubscriber {

    func accept(new messages: [Message])
    func accept(removed messages: [Message])
}
