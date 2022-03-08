//
//  ManualController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension

// ButtonsActionProtocol
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

// ConfigureViewProtocol
extension ManualController: ConfigureViewProtocol {
    internal func addView() {
        self.view.addSubview(customView.customCourseView)
        self.view.addSubview(customView.courseNameLabel)
        self.view.addSubview(customView.moreButton)
        self.view.addSubview(customView.priceLabel)
        self.view.addSubview(customView.blueButton)
    }
    
    internal func configureView() {
        customView.customCourseView.frame.size = CGSize(width: 343, height: 174)
        customView.customCourseView.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
        
        customView.courseNameLabel.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY, width: 303, height: 100)
        customView.moreButton.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY + 80, width: 79, height: 35)
        customView.priceLabel.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY + 125, width: 69, height: 22)
        customView.blueButton.frame = CGRect(x: customView.customCourseView.frame.minX + 251, y: customView.customCourseView.frame.minY + 120, width: 72, height: 36)
    }
}

// ConfigureNavigationBarProtocol
extension ManualController: ConfigureNavigationBarProtocol {
    internal func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(showModalViewController))
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}
