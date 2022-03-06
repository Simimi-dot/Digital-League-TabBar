//
//  LargeNavigationContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

class LargeNavigationController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        
        self.title = "Large Navigation"
        
        view.backgroundColor = .systemCyan
    }
    
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
        button.tintColor = .black
        
        navigationItem.rightBarButtonItem = button
    }
    
    
}
