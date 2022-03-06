//
//  ManualContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Class
class ManualController: UIViewController {
    
//MARK: - Properties

    let customView = CustomView(courseEvent: nil, courseName: .ios, coursePrice: .ios)
    
//MARK: - Life Cycle
    
    override func loadView() {
        self.view = customView
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        configureNavigationBar()
        
        self.title = "Manual Controller"
        
        view.backgroundColor = .systemOrange
    }
    
    
    
//MARK: - Methods
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: nil)
        button.tintColor = .black
        
        navigationItem.rightBarButtonItem = button
    }
    
    func addView() {
        
        self.view.addSubview(customView.customCourseView)
        
        self.view.addSubview(customView.courseNameLabel)
        self.view.addSubview(customView.moreButton)
        self.view.addSubview(customView.priceLabel)
        self.view.addSubview(customView.blueButton)
        
    }
    
    func configure() {
        
        customView.customCourseView.frame.size = CGSize(width: 343, height: 174)
        customView.customCourseView.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
        
        customView.courseNameLabel.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY, width: 303, height: 100)
        customView.moreButton.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY + 80, width: 79, height: 35)
        customView.priceLabel.frame = CGRect(x: customView.customCourseView.frame.minX + 20, y: customView.customCourseView.frame.minY + 125, width: 69, height: 22)
        customView.blueButton.frame = CGRect(x: customView.customCourseView.frame.minX + 251, y: customView.customCourseView.frame.minY + 120, width: 72, height: 36)
        
    }
    
}
