//
//  ExpensiveService.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

protocol ExpensiveServiceType {}

final class ExpensiveService: ExpensiveServiceType {
    private static var numberOfInstances = 0
    
    init() {
        // Let's imagine this service is expensive to create and takes a lot of space in memory ;)
        Self.numberOfInstances += 1
        print("EXPENSIVE SERVICE INIT; INSTANCES = \(Self.numberOfInstances)")
    }
    
    deinit {
        Self.numberOfInstances -= 1
        print("EXPENSIVE SERVICE DEINIT; INSTANCES = \(Self.numberOfInstances)")
    }
}
