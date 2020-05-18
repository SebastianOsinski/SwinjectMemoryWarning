//
//  SecondViewController.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

import UIKit

typealias SecondViewControllerFactory = () -> SecondViewController

class SecondViewController: UIViewController {
    private let expensiveService: ExpensiveServiceType
    
    init(expensiveService: ExpensiveServiceType) {
        self.expensiveService = expensiveService
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second"
        
        view.backgroundColor = .systemGreen
    }
}
