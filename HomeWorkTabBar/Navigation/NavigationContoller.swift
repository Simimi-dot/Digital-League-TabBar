//
//  NavigationContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

class NavigationContoller: UIViewController {
    
    
    override func loadView() {
        super.loadView()
        
        self.title = "Navigation"
        
        configureNavigationBar()
        
        view.backgroundColor = .systemYellow
    }
    
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: nil)
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
