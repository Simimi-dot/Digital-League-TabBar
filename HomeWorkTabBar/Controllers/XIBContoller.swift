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
    
    //MARK: - Life cycle
    override func loadView() {
        self.view = newXibView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "XIB Controller"
        view.backgroundColor = .systemPurple
        configureNavigationBar()
        moreButton()
        blueButton()
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
    
    func moreButton() {
        let moreButton = UIButton(frame: CGRect(x: newXibView.frame.minX + 45, y: newXibView.frame.minY + 418, width: 76, height: 17))
        moreButton.addTarget(self, action: #selector(moveToNextVC), for: .touchUpInside)
        self.view.addSubview(moreButton)
    }
    
    func blueButton() {
        let blueButton = UIButton(frame: CGRect(x: newXibView.frame.minX + 275, y: newXibView.frame.minY + 452, width: 72, height: 36))
        blueButton.addTarget(self, action: #selector(moveToManual), for: .touchUpInside)
        self.view.addSubview(blueButton)
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
