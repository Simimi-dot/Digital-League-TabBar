//
//  XIBContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Class
class XIBContoller: UIViewController {
    
    //MARK: - Properties
    
    let xibView = CustomView(xibCourseEvent: .android, xibCourseName: .andriod, xibCoursePrice: .android)
    
    //MARK: - Life cycle
    override func loadView() {
        self.view = xibView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        xibView.xibBackEventView.layer.borderColor = UIColor.lightGray.cgColor
        view.backgroundColor = .systemPurple
    }
    
    //MARK: - Methods
    
    func configure() {

    }
    
}

//MARK: - Extension
