//
//  LargeNavigationContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Class
class LargeNavigationController: UIViewController {
    
    //MARK: - Properties
    
    let largeNavigationView = LargeNavigationView()
    let navigationBarAppearance = NavigationBarAppearance()
    
    //MARK: - Life cycle
    override func loadView() {
        self.view = largeNavigationView
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Large Navigation"
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavigationBar()
        largeNavigationView.largeNavigationButton.addTarget(self, action: #selector(moveForward), for: .touchUpInside)
    }
}
