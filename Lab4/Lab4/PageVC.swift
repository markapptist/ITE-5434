//
//  PageViewController.swift
//  Lab4
//
//  Created by Mark-Anthony Octavius Meritt on 2020-03-03.
//  Copyright © 2020 Mark-Anthony Octavius Meritt. All rights reserved.
//

import Foundation
import UIKit

class PageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource
{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return TabVC()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return TabVC()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewController.SpineLocation {
        return UIPageViewController.SpineLocation.min
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self 
        self.setViewControllers([ViewController()], direction: UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
    }
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: style, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
