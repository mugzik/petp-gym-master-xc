//
//  MainTabBarController.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 21/10/2024.
//

import UIKit

class MainTabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
        
        tabBar.tintColor = .systemBlue
    }
}

private extension MainTabBarController {
    func setupViewControllers() {
        let mainViewController = MainViewController()
        let nc = UINavigationController(rootViewController: mainViewController)
        nc.tabBarItem = UITabBarItem(title: "Main", image: UIImage(systemName: "house"), tag: 0)
        
        viewControllers = [nc]
    }
}
