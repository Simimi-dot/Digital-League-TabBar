//
//  NavigationContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

// MARK: - Class
class NavigationContoller: UIViewController {
    
    //MARK: - Properties
    let navigationBarAppearance = NavigationBarAppearance()
    
    // MARK: - Life Cycle
    override func loadView() {
        super.loadView()
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Navigation"
        view.backgroundColor = .systemYellow
        configureNavigationBar()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: - Methods
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: nil)
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}
