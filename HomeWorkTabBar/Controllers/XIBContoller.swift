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
    let navigationBarAppearance = NavigationBarAppearance()
    let newXibView = CustomXIBView()
    let xibButtons = CustomXIBButtons()
    
    //MARK: - Life cycle
    override func loadView() {
        self.view = newXibView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "XIB Controller"
        view.backgroundColor = .systemPurple
        configureNavigationBar()
        configureView()
        
        xibButtons.moreButton.addTarget(self, action: #selector(newViewController), for: .touchUpInside)
        xibButtons.blueButton.addTarget(self, action: #selector(switchTabBar), for: .touchUpInside)
    }
    
    //MARK: - Methods
    
    private func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(showModalViewController))
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
}


