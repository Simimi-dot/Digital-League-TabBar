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
    let ricardoView = RicardoMilosView()
    
    //MARK: - Life Cycle
    override func loadView() {
        self.view = ricardoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ricardo"
        configureView()
    }
}
