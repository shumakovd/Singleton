//
//  SingletonVC.swift
//  Singleton
//
//  Created by Shumakov Dmytro on 09.12.2022.
//

import UIKit

class SingletonVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        testSingletonConcept()
        testSingletonForExample()
    }
        
    // MARK: - Methods
    
    func testSingletonConcept() {
        Client.someClientCode()
    }
    
    func testSingletonForExample() {
        /// There are two view controllers.
        ///
        /// MessagesListVC displays a list of last messages from a user's chats.
        /// ChatVC displays a chat with a friend.
        ///
        /// FriendsChatService fetches messages from a server and provides all
        /// subscribers (view controllers in our example) with new and removed
        /// messages.
        ///
        /// FriendsChatService is used by both view controllers. It can be
        /// implemented as an instance of a class as well as a global variable.
        ///
        /// In this example, it is important to have only one instance that
        /// performs resource-intensive work.
        
        let listVC = MessagesListVC()
        let chatVC = ChatVC()
        
        listVC.startReceiveMessages()
        chatVC.startReceiveMessages()
        
        /// ... add view controllers to the navigation stack ...
    }

}
