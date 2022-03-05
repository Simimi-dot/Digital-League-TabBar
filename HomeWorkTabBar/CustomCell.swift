//
//  CustomCell.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

// MARK: - Class
class CustomCell: UITableViewCell {
    
    //MARK: - Properties
    
    lazy var courseNameLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Backend разработка"
        label.numberOfLines = 0
        return label
    }()
    
    lazy var moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Подробнее", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        button.backgroundColor = .clear
        button.setTitleColor(.lightGray, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var costLabel: UILabel = {
        let cost = UILabel()
        cost.translatesAutoresizingMaskIntoConstraints = false
        cost.text = "1780"
        cost.numberOfLines = 0
        return cost
    }()
    
    var customBlueButton: UIButton!
    
//    lazy var blueButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("+", for: .normal)
//        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
//        button.backgroundColor = .systemBlue
//        button.setTitleColor(.white, for: .normal)
//        button.layer.cornerRadius = 10
//        return button
//    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier reuseIdentifire: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifire)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods
    
    func configure() {
        
        self.addSubview(courseNameLabel)
        self.addSubview(moreButton)
        self.addSubview(costLabel)
//        self.addSubview(blueButton)
        
        NSLayoutConstraint.activate([
            
            courseNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 56),
            courseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            courseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            courseNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -96),
            
            moreButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 82),
            moreButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -10),
            moreButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -244),
            moreButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -72),
            
            costLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 125),
            costLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            costLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -259),
            costLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -27),
            
//            blueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 118),
//            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 251),
//            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
//            blueButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
    
}


