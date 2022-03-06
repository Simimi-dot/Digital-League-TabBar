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
        
        self.title = "XIB Controller"
        
        configureNavigationBar()
        
        view.backgroundColor = .systemPurple
    }
    
    //MARK: - Methods
    
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: nil)
        button.tintColor = .black
        
        let navigationBarAppearence = UINavigationBarAppearance()
        navigationBarAppearence.configureWithOpaqueBackground()
        navigationBarAppearence.backgroundColor = .lightGray
        navigationBarAppearence.shadowColor = .clear
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearence
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearence
        navigationController?.navigationBar.compactAppearance = navigationBarAppearence
        
        navigationItem.rightBarButtonItem = button
    }
    
}

//MARK: - Extension
