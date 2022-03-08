//
//  AutoLayoutController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension
extension AutoLayutContoller: ButtonsActionProtocol {
    @objc
    internal func showModalViewController() {
        let ricardoView = RicardoMilosController()
        ricardoView.view.backgroundColor = UIColor(red: 255/255.0, green: 59/255.0, blue: 48/255.0, alpha: 0.6)
        navigationController?.present(ricardoView, animated: true, completion: nil)
    }
    
    @objc
    internal func switchTabBar() {
        tabBarController?.selectedIndex = 3
    }
    
    @objc
    internal func newViewController() {
        let newVC = UIViewController()
        
        newVC.view.backgroundColor = .systemCyan
        newVC.title = "Подробнее"
        
        navigationController?.pushViewController(newVC, animated: true)
    }
}
