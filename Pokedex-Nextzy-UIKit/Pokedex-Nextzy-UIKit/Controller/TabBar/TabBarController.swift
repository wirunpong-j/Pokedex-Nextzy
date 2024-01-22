//
//  TabBarController.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let authViewModel: AuthViewModel

    init(authViewModel: AuthViewModel) {
        self.authViewModel = authViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupTab()

        // Set tab bar
        self.tabBar.barTintColor = UIColor.systemBackground
        self.tabBar.tintColor = UIColor.pinkPokemon

        // Set navigation bar appearance
        UINavigationBar.appearance().barTintColor = UIColor.systemBackground
        UINavigationBar.appearance().tintColor = UIColor.pinkPokemon

    }

    
    // MARK: - set up
    
    private func setupTab(){
        let pokedex = self.createNav(with: "Pokedex", and: UIImage(systemName: "pawprint.fill"), vc: PokedexViewController(authViewModel: authViewModel))
        self.setViewControllers([pokedex], animated: true)
    }

    
    private func createNav(with title:String, and image: UIImage?, vc: UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers.first?.navigationItem.title = title
        return nav
    }

}
