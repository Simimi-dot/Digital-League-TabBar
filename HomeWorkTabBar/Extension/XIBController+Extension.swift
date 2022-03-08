//
//  XIBController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension

// ButtonsActionProtocol
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

// ConfigureViewProtocol
extension XIBContoller: ConfigureViewProtocol {
    internal func configureView() {
        newXibView.addSubview(xibButtons.moreButton)
        newXibView.addSubview(xibButtons.blueButton)
        
        NSLayoutConstraint.activate([
            xibButtons.moreButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 82),
            xibButtons.moreButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 20),
            xibButtons.moreButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -244),
            xibButtons.moreButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -72),
            
            xibButtons.blueButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 118),
            xibButtons.blueButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 251),
            xibButtons.blueButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -20),
            xibButtons.blueButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -20)
        ])
    }
}

// ConfigureNavigationBarProtocol
extension XIBContoller: ConfigureNavigationBarProtocol {
    internal func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(showModalViewController))
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}
