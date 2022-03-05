//
//  CustomView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Enum

enum courseName: String {
    case backend = "Backend разработка"
    case andriod = "Курсы по Android разработкe"
    case ios = "Курсы по iOS разработке + Computer Since + Computer Vision + System Design"
}

enum coursePrise: String {
    case backend = "7840 Р"
    case android = "9800 Р"
    case ios = "11760 Р"
}

enum courseEvent: String {
    case backend = "Первые три занятия бесплатно"
    case android = "1.02.2022 - 1.04.2022 Скидка 10%"
}

//MARK: - Class

class CustomView: UIView {
    
    //MARK: - Properties
    
    lazy var customCourseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        return view
    }()
    
    lazy var courseEventLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        return label
    }()
    
    lazy var backEventView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    lazy var courseNameLabel: UILabel = {
        var name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.textColor = .black
        name.numberOfLines = 3
        return name
    }()
    
    lazy var moreButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Подробнее", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
        button.backgroundColor = .clear
        return button
    }()
    
    lazy var priceLabel: UILabel = {
        var priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.textColor = .black
        priceLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return priceLabel
    }()
    
    lazy var blueButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: .light)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    
    // MARK: - init
    
    init(courseEvent: courseEvent?, courseName: courseName, coursePrice: coursePrise) {
        super.init(frame: .zero)
        
        if let courseEvent = courseEvent {
            self.courseEventLabel.text = courseEvent.rawValue
        }
        
        self.courseNameLabel.text = courseName.rawValue
        self.priceLabel.text = coursePrice.rawValue
        //        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods
    
    //    private func configure() {
    //        self.backgroundColor = .white
    //
    //        self.addSubview(customCourseView)
    //
    //        customView.addSubview(courseNameLabel)
    //        customView.addSubview(moreButton)
    //        customView.addSubview(priceLabel)
    //        customView.addSubview(blueButton)
    //
    //        NSLayoutConstraint.activate([
    //            customView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
    //            customView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
    //            customView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
    //
    //            courseNameLabel.topAnchor.constraint(equalTo: customView.topAnchor, constant: 16),
    //            courseNameLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16),
    //            courseNameLabel.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -16),
    //
    //            moreButton.topAnchor.constraint(equalTo: courseNameLabel.bottomAnchor, constant: 16),
    //            moreButton.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16),
    //            moreButton.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -16),
    //
    //            priceLabel.topAnchor.constraint(equalTo: moreButton.bottomAnchor, constant: 16),
    //            priceLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16),
    //            priceLabel.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -16),
    //
    //            blueButton.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 16),
    //            blueButton.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16),
    //            blueButton.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -16),
    //            blueButton.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -16)
    //
    //        ])
    //    }
    
    
}

//MARK: - Extension

