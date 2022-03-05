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

    let xibCustomView = CustomView(xibCourseEvent: .backend, xibCourseName: .backend, xibCoursePrice: .backend)
    
//MARK: - Life cycle
    override func loadView() {
        self.view = xibCustomView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
    }

//MARK: - Methods
    
}

//MARK: - Extension
