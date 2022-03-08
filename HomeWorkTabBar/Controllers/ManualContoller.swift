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
    let navigationBarAppearance = NavigationBarAppearance()
    
    //MARK: - Life Cycle
    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configureView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Manual"
        view.backgroundColor = .systemOrange
        
        addView()
        configureNavigationBar()
        
        customView.blueButton.addTarget(self, action: #selector(switchTabBar), for: .touchUpInside)
        customView.moreButton.addTarget(self, action: #selector(newViewController), for: .touchUpInside)
    }
    
    //MARK: - Methods
    private func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(showModalViewController))
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
    
    
    
}
