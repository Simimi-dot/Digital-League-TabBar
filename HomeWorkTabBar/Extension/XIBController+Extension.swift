//
//  XIBController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension
extension XIBContoller: ButtonsActionProtocol {
    @objc
    internal func showModalViewController() {
        let ricardoView = RicardoMilosController()
        ricardoView.view.backgroundColor = .systemPurple
        navigationController?.present(ricardoView, animated: true, completion: nil)
    }
    
    @objc
    internal func switchTabBar() {
        self.tabBarController?.selectedIndex = 3
    }
    
    @objc
    internal func newViewController() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = .brown

        navigationController?.pushViewController(newVC, animated: true)
    }
    
}
