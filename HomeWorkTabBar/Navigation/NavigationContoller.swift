//
//  NavigationContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

// MARK: - Class
class NavigationContoller: UIViewController {
    
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
