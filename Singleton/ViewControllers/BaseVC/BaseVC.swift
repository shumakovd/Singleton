//
//  BaseVC.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit
import Foundation

class BaseVC: UIViewController, MessageSubscriber {

    func accept(new messages: [Message]) {
        /// handle new messages in the base class
    }

    func accept(removed messages: [Message]) {
        /// handle removed messages in the base class
    }

    func startReceiveMessages() {

        /// The singleton can be injected as a dependency. However, from an
        /// informational perspective, this example calls FriendsChatService
        /// directly to illustrate the intent of the pattern, which is: "...to
        /// provide the global point of access to the instance..."

        FriendsChatService.shared.add(subscriber: self)
    }
}
