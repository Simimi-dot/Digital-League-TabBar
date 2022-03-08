//
//  ManualController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension
extension ManualController: ButtonsActionProtocol {
    @objc
    internal func showModalViewController() {
        let ricardoView = RicardoMilosController()
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        
        ricardoView.view.backgroundColor = .systemOrange
        
        ricardoView.navigationItem.leftBarButtonItem = cancelButton
        cancelButton.tintColor = .black
        
        navigationController?.present(UINavigationController(rootViewController: ricardoView), animated: true, completion: nil)
    }
    
    @objc
    internal func switchTabBar() {
        tabBarController?.selectedIndex = 3
    }
    
    @objc
    internal func newViewController() {
        let newVC = UIViewController()
        
        newVC.view.backgroundColor = .systemGreen
        newVC.title = "Подробнее"
        
        self.navigationController?.pushViewController(newVC, animated: true)
    }
}
