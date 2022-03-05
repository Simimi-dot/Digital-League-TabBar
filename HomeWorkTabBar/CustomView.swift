//
//  CustomView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Class
class CustomView: UIView {
    
    //MARK: - Properties
    
    var customTableView: UITableView = {
        var tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    lazy var someBlueButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(someBlueButtonPush), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - init
    
    init() {
        super.init(frame: .zero)
        
        configure()
        setTableViewDelegate()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    func configure() {
        self.addSubview(customTableView)
        customTableView.addSubview(someBlueButton)
        self.customTableView.register(CustomCell.self, forCellReuseIdentifier: "MyCustomCell")
        
        NSLayoutConstraint.activate([
            customTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            customTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            customTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            customTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            someBlueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 118),
            someBlueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 251),
            someBlueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            someBlueButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
            
        ])
        
    }
    
    func setTableViewDelegate() {
        customTableView.delegate = self
        customTableView.dataSource = self
        
    }
    
}

//MARK: - Extension

extension CustomView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell") as! CustomCell
        cell.customBlueButton = self.someBlueButton
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 174
    }
    
    @objc
    func someBlueButtonPush() {
        print("Hi")
    }
    
}


