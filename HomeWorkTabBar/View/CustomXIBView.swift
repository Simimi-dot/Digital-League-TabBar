//
//  CustomXIBView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 07.03.2022.
//

import Foundation
import UIKit

//MARK: - Class
class CustomXIBView: UIView {
    @IBOutlet weak var newXibCouseView: UIView!
    @IBOutlet weak var newXibCourseEventLabel: UILabel!
    @IBOutlet weak var newXibBackEventView: UIView!
    @IBOutlet weak var newXibCourseNameLabel: UILabel!
    @IBOutlet weak var newXibMoreButton: UIButton!
    @IBOutlet weak var newXibPriceLabel: UILabel!
    @IBOutlet weak var newxibBlueButton: UIButton!
    
    //MARK: - Init
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - Methods
    private func commonInit() {
        let viewFromXib = Bundle.main.loadNibNamed("CustomXIBView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        viewFromXib.autoresizingMask = [.flexibleWidth , .flexibleHeight]
        
        addSubview(viewFromXib)
        
        viewFromXib.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            viewFromXib.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            viewFromXib.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
}
