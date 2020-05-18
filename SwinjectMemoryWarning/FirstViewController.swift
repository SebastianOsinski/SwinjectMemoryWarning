//
//  FirstViewController.swift
//  SwinjectMemoryWarning
//
//  Created by Sebastian Osiński on 17/05/2020.
//  Copyright © 2020 Sebastian Osiński. All rights reserved.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    private let secondViewControllerFactory: SecondViewControllerFactory
    
    init(secondViewControllerFactory: @escaping SecondViewControllerFactory) {
        self.secondViewControllerFactory = secondViewControllerFactory
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "First"

        view.backgroundColor = .systemRed
        
        let button = UIButton()
        button.setTitle("Push Second", for: .normal)
        button.addTarget(self, action: #selector(showSecondViewController), for: .touchUpInside)

        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc private func showSecondViewController() {
        navigationController?.pushViewController(
            secondViewControllerFactory(),
            animated: true
        )
    }
}
