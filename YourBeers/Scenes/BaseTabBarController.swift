//
//  BaseTabBarController.swift
//  YourBeers
//
//  Created by Gustavo Rodrigues Leitão on 20/03/20.
//  Copyright © 2020 Gustavo Rodrigues Leitão. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prepareTabBar()
    }
    
    private func prepareTabBar() {
        viewControllers = [
            createNavController(viewController: HomeBeersViewController(), title: "Home", imageName: "home"),
            createNavController(viewController: FavoritesBeersViewController(), title: "Favoritos", imageName: "favorites")
        ]
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
