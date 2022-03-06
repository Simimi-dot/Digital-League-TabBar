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
    
    //MARK: - Life Cycle
    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        configureNavigationBar()
        
        customView.blueButton.addTarget(self, action: #selector(pushAutoController), for: .touchUpInside)
        
        view.backgroundColor = .systemRed
    }
    
    //MARK: - Methods
    
    func configureNavigationBar() {
        let someButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pinkColor))
        someButton.tintColor = .black
        
        navigationItem.rightBarButtonItem = someButton
    }
    
    @objc
    func pinkColor() {
        self.view.backgroundColor = .systemPink
    }
    
    func configure() {
        
        self.title = "Auto Layout"
        
        self.view.backgroundColor = .green
        
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
    
    @objc
    func pushAutoController() {
        navigationController?.pushViewController(NewController(), animated: true)
    }
    
    
}
