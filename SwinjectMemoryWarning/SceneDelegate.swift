//
//  SceneDelegate.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = appContainer.resolve(UINavigationController.self)
        self.window = window
        window.makeKeyAndVisible()
    }
}

