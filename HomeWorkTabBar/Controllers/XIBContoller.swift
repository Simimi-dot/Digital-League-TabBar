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
        configureButtons()
        
        xibButtons.moreButton.addTarget(self, action: #selector(moveToNextVC), for: .touchUpInside)
        xibButtons.blueButton.addTarget(self, action: #selector(moveToManual), for: .touchUpInside)
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
    
    private func configureButtons() {
        newXibView.addSubview(xibButtons.moreButton)
        newXibView.addSubview(xibButtons.blueButton)
        
        NSLayoutConstraint.activate([
            xibButtons.moreButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 82),
            xibButtons.moreButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 20),
            xibButtons.moreButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -244),
            xibButtons.moreButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -72),
            
            xibButtons.blueButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 118),
            xibButtons.blueButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 251),
            xibButtons.blueButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -20),
            xibButtons.blueButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -20)
        ])
        
    }
}

//MARK: - Extension @objc

extension XIBContoller {
    @objc
    private func showModalViewController() {
        let ricardoView = RicardoMilosController()
        ricardoView.view.backgroundColor = .systemPurple
        navigationController?.present(ricardoView, animated: true, completion: nil)
    }
    
    @objc
    private func moveToNextVC() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = .brown

        navigationController?.pushViewController(newVC, animated: true)
    }
    
    @objc
    private func moveToManual() {
        self.tabBarController?.selectedIndex = 3
    }
}
