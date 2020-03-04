//
//  NavVC.swift
//  Lab4
//
//  Created by Mark-Anthony Octavius Meritt on 2020-03-03.
//  Copyright © 2020 Mark-Anthony Octavius Meritt. All rights reserved.
//

import Foundation
import UIKit

/*
 CONTAINER VIEW CONTROLLER
    - USED TO CONTAIN CHILD VIEWS
 */
class NavVC: UINavigationController
{
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
        navigationBar.backgroundColor = .blue
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
