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
}
