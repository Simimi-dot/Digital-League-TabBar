//
//  LargeNavigationController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension

// ConfigureNavigationBarProtocol
extension LargeNavigationController: ConfigureNavigationBarProtocol {
    internal func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}

// @objc
extension LargeNavigationController {
    @objc
    internal func moveForward() {
        let newVC = UIViewController()
        let someView = LargeNavigationView()
        
        newVC.navigationItem.largeTitleDisplayMode = .never
        
        newVC.view = someView
        
        someView.largeNavigationButton.setTitle("Снова нажми на меня", for: .normal)
        someView.largeNavigationButton.addTarget(self, action: #selector(moveForwardAgain), for: .touchUpInside)
        
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    @objc
    private func moveForwardAgain() {
        let againNewVC = UIViewController()
        againNewVC.view.backgroundColor = .systemRed
        againNewVC.navigationItem.largeTitleDisplayMode = .always
        
        navigationController?.pushViewController(againNewVC, animated: true)
    }
}
