//
//  MessagesListVC.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class MessagesListVC: BaseVC {

    override func accept(new messages: [Message]) {
        print("MessagesListVC accepted 'new messages'")
        /// handle new messages in the child class
    }

    override func accept(removed messages: [Message]) {
        print("MessagesListVC accepted 'removed messages'")
        /// handle removed messages in the child class
    }

    override func startReceiveMessages() {
        print("MessagesListVC starts receive messages")
        super.startReceiveMessages()
    }
}
