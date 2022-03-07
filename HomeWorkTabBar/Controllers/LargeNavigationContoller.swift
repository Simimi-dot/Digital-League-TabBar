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
    
    //MARK: - Methods
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: nil)
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}

//MARK: - Extension @objc
extension LargeNavigationController {
    @objc
    func moveForward() {
        let newVC = UIViewController()
        let someView = LargeNavigationView()
        
        newVC.navigationItem.largeTitleDisplayMode = .never
        
        newVC.view = someView
        
        someView.largeNavigationButton.setTitle("Снова нажми на меня", for: .normal)
        someView.largeNavigationButton.addTarget(self, action: #selector(moveForwardAgain), for: .touchUpInside)
        
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    @objc
    func moveForwardAgain() {
        let againNewVC = UIViewController()
        againNewVC.view.backgroundColor = .systemRed
        againNewVC.navigationItem.largeTitleDisplayMode = .always
        
        navigationController?.pushViewController(againNewVC, animated: true)
    }
}
