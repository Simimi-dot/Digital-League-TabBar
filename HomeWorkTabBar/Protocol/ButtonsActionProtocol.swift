//
//  ButtonsActionProtocol.swift
//  HomeWorkTabBar
//
//  Created by Егор Астахов on 08.03.2022.
//

import Foundation

//MARK: - Protocol @objc

@objc
protocol ButtonsActionProtocol {
    @objc func showModalViewController()
    @objc func switchTabBar()
    @objc func newViewController()
}
