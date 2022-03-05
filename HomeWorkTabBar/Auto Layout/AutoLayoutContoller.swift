//
//  AutoLayoutContoller.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 04.03.2022.
//

import Foundation
import UIKit

//MARK: - Class
class AutoLayutContoller: UIViewController {

//MARK: - Properties
    let customView = CustomView()

//MARK: - Life Cycle
    override func loadView() {
        self.view = customView
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemRed
    }
    
}
