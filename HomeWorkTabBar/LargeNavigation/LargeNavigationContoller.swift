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
        
        let navigationBarAppearence = UINavigationBarAppearance()
        navigationBarAppearence.configureWithOpaqueBackground()
        navigationBarAppearence.backgroundColor = .lightGray
        navigationBarAppearence.shadowColor = .clear
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearence
        navigationController?.navigationBar.compactAppearance = navigationBarAppearence
        
        navigationItem.rightBarButtonItem = button
    }
    
    
}
