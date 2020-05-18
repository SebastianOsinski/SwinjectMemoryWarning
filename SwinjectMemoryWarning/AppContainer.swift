//
//  AppContainer.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

import Swinject
import SwinjectAutoregistration
import UIKit

let appContainer = Container { container in
    container
        .register(UINavigationController.self) { resolver in
            UINavigationController(
                rootViewController: resolver.resolve(FirstViewController.self)!
            )
        }
    
    container
        .autoregister(FirstViewController.self, initializer: FirstViewController.init)
    
    container
        .register(SecondViewControllerFactory.self) { resolver in
            { resolver.resolve(SecondViewController.self)! }
        }
    
    container
        .autoregister(SecondViewController.self, initializer: SecondViewController.init)
        .inObjectScope(.transient)
    
    container
        .autoregister(ExpensiveServiceType.self, initializer: ExpensiveService.init)
        .inObjectScope(.sufficientMemory)
}
