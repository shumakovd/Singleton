//
//  MessageService.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

/// Protocol for communication with a message service

protocol MessageService {

    func add(subscriber: MessageSubscriber)
}
