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
    lazy var userLabel:UILabel = {
        let label = UILabel()
        label.textColor = .black
        
        return label
    }()
    
    lazy var signOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("sign out", for: .normal)
        button.backgroundColor = UIColor.pinkPokemon
        button.addTarget(self, action: #selector(signOutButtonTapped), for: .touchUpInside)
        return button
    }()
    

    
    // MARK: - Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.fetchData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        setupUI()
        
        
    }
    
    // MARK: - UI Setup
    private func setupNavbar() {
        self.view.backgroundColor = .red
        self.navigationController?.navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.pinkPokemon
        
        let searchButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped))
        
        let columnsImageName = isDisplayThreeColumns ? "square.grid.2x2" : "square.grid.3x3"
        let columnsButton = UIBarButtonItem(image: UIImage(systemName: columnsImageName), style: .plain, target: self, action: #selector(toggleColumnDisplayed))
        
        self.navigationItem.leftBarButtonItems = [columnsButton]
        self.navigationItem.rightBarButtonItem = searchButton
    }
    
    private func setupUI(){
        self.view.addSubview(userLabel)
        self.view.addSubview(signOutButton)
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            userLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            signOutButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            signOutButton.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 50)
        
        ])

    }
    
    private func fetchData(){
        userLabel.text = authViewModel.currentUser?.firstname
    }
    
    // MARK: - Selectors
    
    @objc private func searchButtonTapped() {

    }
    
    @objc private func signOutButtonTapped() {
        authViewModel.signOut()
        showAlert(message: "Sign out completed")
        displayLogin()
        
    }

    
    @objc private func toggleColumnDisplayed(){
        isDisplayThreeColumns.toggle()
        setupNavbar()
        
    }
    func displayLogin() {
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.presentLoginViewController()
    }

}



