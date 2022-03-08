//
//  RicardoMilosController+Extension.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import UIKit

//MARK: - Extension

// ConfigureViewProtocol
extension RicardoMilosController: ConfigureViewProtocol {
    //MARK: - Methods
    
    internal func configureView() {
        ricardoView.ricardoImage.image = UIImage(named: "Ricardo")
        
        self.view.addSubview(ricardoView.ricardoImage)
        
        NSLayoutConstraint.activate([
            ricardoView.ricardoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ricardoView.ricardoImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ricardoView.ricardoImage.widthAnchor.constraint(equalToConstant: 350),
            ricardoView.ricardoImage.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
