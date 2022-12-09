//
//  ChatVC.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import Foundation

class ChatVC: BaseVC {

    override func accept(new messages: [Message]) {
        print("ChatVC accepted 'new messages'")
        /// handle new messages in the child class
    }

    override func accept(removed messages: [Message]) {
        print("ChatVC accepted 'removed messages'")
        /// handle removed messages in the child class
    }

    override func startReceiveMessages() {
        print("ChatVC starts receive messages")
        super.startReceiveMessages()
    }
}
