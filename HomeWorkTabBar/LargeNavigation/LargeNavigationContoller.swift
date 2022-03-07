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
    
    //MARK: - Methods
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
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

//MARK: - Extension @objc
extension LargeNavigationController {
    @objc
    func moveForward() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = .red
        newVC.navigationItem.largeTitleDisplayMode = .never
        
        navigationController?.pushViewController(newVC, animated: true)
    }
}
