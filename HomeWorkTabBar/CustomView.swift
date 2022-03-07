//
//  CustomView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import UIKit

//MARK: - Enum

//MARK: - Class


class CustomView: UIView {
    
    //MARK: - XIB
    
    // Outlet
    @IBOutlet weak var xibCustomCourseView: UIView!
    @IBOutlet weak var xibCourseEventLabel: UILabel!
    @IBOutlet weak var xibBackEventView: UIView!
    @IBOutlet weak var xibCourseNameLabel: UILabel!
    @IBOutlet weak var xibMoreButton: UIButton!
    @IBOutlet weak var xibPriceLabel: UILabel!
    @IBOutlet weak var xibBlueButton: UIButton!
    
    // Action
    @IBAction func moreButtonAction(_ sender: UIButton) {
        print(#line, #function)
        
        
    }
    
    @IBAction func blueButtonAction(_sender: UIButton) {
        print(#line, #function)
    }
    
    // MARK: - Properties
    
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
        
        setupViews()
        
//        if let xibCourseEvent = xibCourseEvent {
//            self.courseEventLabel.text = xibCourseEvent.rawValue
//        }
//        
//        self.courseNameLabel.text = xibCourseName.rawValue
//        self.priceLabel.text = xibCoursePrice.rawValue
//
    }
    
    // MARK: - Required Init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    // MARK: - Methods
    
    
    
    // MARK: - XIBMethods
    
    func setupViews() {
        let xibView = loadViewFromXib()
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.addSubview(xibView)
        
        xibView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            xibView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            xibView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    
    }
    
    func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomXIBView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
}

//MARK: - Extension

