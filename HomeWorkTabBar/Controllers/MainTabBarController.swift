//
//  MainTabBarController.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

// MARK: - Class
class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    let autoLayout = UINavigationController(rootViewController: AutoLayutContoller())
    let xib = UINavigationController(rootViewController: XIBContoller())
    let manual = UINavigationController(rootViewController: ManualController())
    let navigation = UINavigationController(rootViewController: NavigationContoller())
    let largeNavigation = UINavigationController(rootViewController: LargeNavigationController())
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([autoLayout, xib, manual, navigation, largeNavigation], animated: true)
        customizeTabBar()
        customizeTabBarImage()
    }
    
    // MARK: - Methods
    private func customizeTabBar() {
        autoLayout.title = "Auto Layout"
        xib.title = "XIB"
        manual.title = "Manual"
        navigation.title = "Navigation"
        largeNavigation.title = "Large Navigation"
        
        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .systemGray
    }
    
    private func customizeTabBarImage() {
        guard let items = self.tabBar.items else { return }
        
        let arrayOfSystemImages = ["house", "flame", "smoke", "keyboard", "moon"]
        
        for systemImage in 0..<arrayOfSystemImages.count{
            items[systemImage].image = UIImage(systemName: arrayOfSystemImages[systemImage])
        }
    }
}



