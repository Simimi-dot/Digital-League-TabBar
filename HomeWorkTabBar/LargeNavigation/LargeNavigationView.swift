//
//  LargeNavigationView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 07.03.2022.
//

import UIKit

//MARK: - Class
class LargeNavigationView: UIView {
    
    //MARK: - Properties
    lazy var navigationView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemCyan
        return view
    }()
    
    lazy var largeNavigationButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Нажми на меня", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .clear
        return button
    }()
    
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        configureButtonView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    func configureButtonView() {
        self.addSubview(navigationView)
        
        navigationView.addSubview(largeNavigationButton)
        
        NSLayoutConstraint.activate([
            navigationView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            navigationView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            navigationView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            navigationView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            largeNavigationButton.centerXAnchor.constraint(equalTo: navigationView.centerXAnchor),
            largeNavigationButton.centerYAnchor.constraint(equalTo: navigationView.centerYAnchor)
        ])
    }
}
