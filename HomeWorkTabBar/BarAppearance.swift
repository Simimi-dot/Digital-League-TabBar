//
//  BarAppearance.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 07.03.2022.
//

import Foundation
import UIKit

//MARK: - Class
struct NavigationBarAppearance {
    //MARK: - Methods
    func barAppearance() -> UINavigationBarAppearance {
        let navigationBarAppearence = UINavigationBarAppearance()
        navigationBarAppearence.configureWithOpaqueBackground()
        navigationBarAppearence.backgroundColor = .lightGray
        navigationBarAppearence.shadowColor = .clear
        return navigationBarAppearence
    }
}
