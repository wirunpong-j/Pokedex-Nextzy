//
//  PokedexViewController.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class PokedexViewController: UIViewController{
    

    
    // MARK: - Varibles
    private let authViewModel: AuthViewModel

    init(authViewModel: AuthViewModel) {
        self.authViewModel = authViewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var isDisplayThreeColumns = false

    
    // MARK: - UI Components

    

    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        setupUI()
        
    }
    
    // MARK: - UI Setup
    private func setupNavbar() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.pinkPokemon
        
        let searchButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped))
        
        let columnsImageName = isDisplayThreeColumns ? "square.grid.2x2" : "square.grid.3x3"
        let columnsButton = UIBarButtonItem(image: UIImage(systemName: columnsImageName), style: .plain, target: self, action: #selector(toggleColumnDisplayed))
        
        self.navigationItem.leftBarButtonItems = [columnsButton]
        self.navigationItem.rightBarButtonItem = searchButton
    }
    
    private func setupUI(){

    }
    
    // MARK: - Selectors
    
    @objc private func searchButtonTapped() {
        authViewModel.signOut()

    }
    
    @objc private func toggleColumnDisplayed(){
        isDisplayThreeColumns.toggle()
        setupNavbar()
        
    }
    func displayLogin(){
        print("DEBUG: log out")
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.presentTabBarController()
    }
}



