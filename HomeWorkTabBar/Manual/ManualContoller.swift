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

    let customView = CustomView(courseEvent: .android, courseName: .andriod, coursePrice: .android)
    
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
        
        view.backgroundColor = .systemOrange
    }
    
    
    
//MARK: - Methods
    
    func addView() {
        
        self.view.addSubview(customView.customCourseView)
        
        customView.customCourseView.addSubview(customView.courseNameLabel)
        customView.customCourseView.addSubview(customView.moreButton)
        customView.customCourseView.addSubview(customView.priceLabel)
        customView.customCourseView.addSubview(customView.blueButton)
    }
    
    func configure() {
        
        customView.customCourseView.frame.size = CGSize(width: 343, height: 174)
        customView.customCourseView.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
        
        
    
    }
    
    
    
}
