//
//  AutoLayoutContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import Foundation
import UIKit

//MARK: - Class
class AutoLayutContoller: UIViewController {
    
    //MARK: - Properties
    let customView = CustomView(courseEvent: .backend, courseName: .backend, coursePrice: .backend)
    let navigationBarAppearance = NavigationBarAppearance()
    
    //MARK: - Life Cycle
    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Auto Layout"
        view.backgroundColor = .systemRed
        
        configureView()
        configureNavigationBar()
        
        customView.blueButton.addTarget(self, action: #selector(switchTabBar), for: .touchUpInside)
        customView.moreButton.addTarget(self, action: #selector(newViewController), for: .touchUpInside)
    }
    
    //MARK: - Methods
    
    private func configureNavigationBar() {
        let someButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showModalViewController))
        someButton.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = someButton
    }
    
    private func configureView() {
        self.view.addSubview(customView.customCourseView)
        
        customView.customCourseView.addSubview(customView.courseEventLabel)
        customView.customCourseView.addSubview(customView.backEventView)
        customView.customCourseView.addSubview(customView.courseNameLabel)
        customView.customCourseView.addSubview(customView.moreButton)
        customView.customCourseView.addSubview(customView.priceLabel)
        customView.customCourseView.addSubview(customView.blueButton)
        
        NSLayoutConstraint.activate([
            customView.customCourseView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            customView.customCourseView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            customView.customCourseView.widthAnchor.constraint(equalToConstant: 343),
            customView.customCourseView.heightAnchor.constraint(equalToConstant: 174),
            
            customView.courseEventLabel.topAnchor.constraint(equalTo: customView.customCourseView.topAnchor, constant: 24),
            customView.courseEventLabel.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 32),
            customView.courseEventLabel.trailingAnchor.constraint(lessThanOrEqualTo: customView.customCourseView.trailingAnchor, constant: -20),
            customView.courseEventLabel.bottomAnchor.constraint(equalTo: customView.customCourseView.bottomAnchor, constant: -134),
            
            customView.backEventView.topAnchor.constraint(equalTo: customView.customCourseView.topAnchor, constant: 20),
            customView.backEventView.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 20),
            customView.backEventView.trailingAnchor.constraint(greaterThanOrEqualTo: customView.courseEventLabel.trailingAnchor, constant: 12),
            customView.backEventView.bottomAnchor.constraint(equalTo: customView.courseNameLabel.topAnchor, constant: -12),
            
            customView.courseNameLabel.topAnchor.constraint(lessThanOrEqualTo: customView.customCourseView.topAnchor, constant: 56),
            customView.courseNameLabel.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 20),
            customView.courseNameLabel.trailingAnchor.constraint(equalTo: customView.customCourseView.trailingAnchor, constant: -20),
            customView.courseNameLabel.bottomAnchor.constraint(equalTo: customView.customCourseView.bottomAnchor, constant: -96),
            
            customView.moreButton.topAnchor.constraint(equalTo: customView.courseNameLabel.bottomAnchor, constant: 4),
            customView.moreButton.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 20),
            customView.moreButton.trailingAnchor.constraint(equalTo: customView.customCourseView.trailingAnchor, constant: -244),
            customView.moreButton.bottomAnchor.constraint(equalTo: customView.customCourseView.bottomAnchor, constant: -72),
            
            customView.priceLabel.topAnchor.constraint(equalTo: customView.moreButton.bottomAnchor, constant: 23),
            customView.priceLabel.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 20),
            customView.priceLabel.trailingAnchor.constraint(equalTo: customView.customCourseView.trailingAnchor, constant: -257),
            customView.priceLabel.bottomAnchor.constraint(equalTo: customView.customCourseView.bottomAnchor, constant: -27),
            
            customView.blueButton.topAnchor.constraint(equalTo: customView.customCourseView.topAnchor, constant: 118),
            customView.blueButton.leadingAnchor.constraint(equalTo: customView.customCourseView.leadingAnchor, constant: 251),
            customView.blueButton.trailingAnchor.constraint(equalTo: customView.customCourseView.trailingAnchor, constant: -20),
            customView.blueButton.bottomAnchor.constraint(equalTo: customView.customCourseView.bottomAnchor, constant: -20)
        ])
    }
}

//MARK: - Extension @objc

extension AutoLayutContoller {
    @objc
    private func showModalViewController() {
        let ricardoView = RicardoMilosController()
        ricardoView.view.backgroundColor = UIColor(red: 255/255.0, green: 59/255.0, blue: 48/255.0, alpha: 0.6)
        navigationController?.present(ricardoView, animated: true, completion: nil)
    }
    
    @objc
    private func switchTabBar() {
        tabBarController?.selectedIndex = 3
    }
    
    @objc
    private func newViewController() {
        let newVC = UIViewController()
        
        newVC.view.backgroundColor = .systemCyan
        newVC.title = "Подробнее"
        
        navigationController?.pushViewController(newVC, animated: true)
    }
}
