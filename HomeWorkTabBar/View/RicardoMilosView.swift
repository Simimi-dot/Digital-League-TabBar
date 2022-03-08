//
//  RicardoMilosView.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

// MARK: - Class
class RicardoMilosView: UIView {
    
    //MARK: - Properties
    lazy var ricardoImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
