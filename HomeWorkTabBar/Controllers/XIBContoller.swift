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
    let newXibView = NewCustomXIBView()
    
    lazy var moreButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(moveToNextVC), for: .touchUpInside)
        return button
    }()
    
    lazy var blueButton: UIButton = {
       var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("", for: .normal)
        button.setTitleColor(.orange, for: .normal)
        button.addTarget(self, action: #selector(moveToManual), for: .touchUpInside)
        return button
    }()
    
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
    }
    
    //MARK: - Methods
    
    func configureNavigationBar() {
        let button = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(showModalViewController))
        button.tintColor = .black
        
        navigationController?.navigationBar.standardAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance.barAppearance()
        navigationController?.navigationBar.compactAppearance = navigationBarAppearance.barAppearance()
        
        navigationItem.rightBarButtonItem = button
    }
    
    func configureButtons() {
        newXibView.addSubview(moreButton)
        newXibView.addSubview(blueButton)
        
        NSLayoutConstraint.activate([
            moreButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 82),
            moreButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 20),
            moreButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -244),
            moreButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -72),
            
            blueButton.topAnchor.constraint(equalTo: newXibView.newXibCouseView.topAnchor, constant: 118),
            blueButton.leadingAnchor.constraint(equalTo: newXibView.newXibCouseView.leadingAnchor, constant: 251),
            blueButton.trailingAnchor.constraint(equalTo: newXibView.newXibCouseView.trailingAnchor, constant: -20),
            blueButton.bottomAnchor.constraint(equalTo: newXibView.newXibCouseView.bottomAnchor, constant: -20)
        ])
        
    }
}

//MARK: - Extension @objc

extension XIBContoller {
    @objc
    func showModalViewController() {
        let ricardoView = RicardoMilosController()
        ricardoView.view.backgroundColor = .systemPurple
        navigationController?.present(ricardoView, animated: true, completion: nil)
    }
    
    @objc
    func moveToNextVC() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = .brown

        navigationController?.pushViewController(newVC, animated: true)
    }
    
    @objc
    func moveToManual() {
        self.tabBarController?.selectedIndex = 3
    }
}
