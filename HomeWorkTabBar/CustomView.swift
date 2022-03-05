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
    
    //MARK: - IBOutlet
    
    @IBOutlet weak var xibCourseView: UIView!
    @IBOutlet weak var xibBackEventView: UIView!
    @IBOutlet weak var xibCourseEventLabel: UILabel!
    @IBOutlet weak var xibCourseNameLabel: UILabel!
    @IBOutlet weak var xibMoreButton: UIButton!
    @IBOutlet weak var xibPriceLabel: UILabel!
    @IBOutlet weak var xibBlueButton: UIButton!
    
    // Properties
    
    
    
    
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
    }
    
    // MARK: - XIBInit
    
    init(xibCourseEvent: courseEvent?, xibCourseName: courseName, xibCoursePrice: coursePrise) {
        super.init(frame: .zero)
        
        if let xibCourseEvent = xibCourseEvent {
            self.courseEventLabel.text = xibCourseEvent.rawValue
        }
        
        self.courseNameLabel.text = xibCourseName.rawValue
        self.priceLabel.text = xibCoursePrice.rawValue
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods
    
}

//MARK: - Extension

