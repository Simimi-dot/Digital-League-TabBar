//
//  RicardoMilosController.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 06.03.2022.
//

import Foundation
import UIKit

//MARK: - Class
class RicardoMilosController: UIViewController {
    
    //MARK: - Properties
    lazy var ricardoImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ricardo"
        configureView()
    }
    
    //MARK: - Methods
    private func configureView() {
        ricardoImage.image = UIImage(named: "Ricardo")
        
        self.view.addSubview(ricardoImage)
        
        NSLayoutConstraint.activate([
            ricardoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ricardoImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ricardoImage.widthAnchor.constraint(equalToConstant: 350),
            ricardoImage.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
