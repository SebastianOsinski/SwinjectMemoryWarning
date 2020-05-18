//
//  SufficientMemoryScope.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

import Swinject
import UIKit

extension ObjectScope {
    static let sufficientMemory = ObjectScope(storageFactory: SufficientMemoryStorage.init)
}

private final class SufficientMemoryStorage: InstanceStorage {
    var instance: Any?
    
    init() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(releaseInstanceIfNeeded),
            name: UIApplication.didReceiveMemoryWarningNotification,
            object: nil
        )
    }
    
    @objc private func releaseInstanceIfNeeded() {
        weak var weakInstance = instance as AnyObject
        instance = nil
        instance = weakInstance
    }
}
