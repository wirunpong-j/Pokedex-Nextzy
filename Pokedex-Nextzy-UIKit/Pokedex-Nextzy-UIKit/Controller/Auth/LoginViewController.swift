//
//  LoginViewController.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class LoginViewController: UIViewController {

    
    // MARK: - Varibles
    
    
    // MARK: - UI Components
    lazy var logoImage: UIImageView = {
        let imageName = "pokedex-logo"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    lazy var emailField: UITextField = {
        let field = UITextField()
        field.autocapitalizationType = .none
        field.borderStyle = .none
        field.placeholder = "Enter your email"
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: field.frame.size.height))
        field.leftViewMode = .always
        return field
    }()
    
    lazy var passwordField: UITextField = {
        let field = UITextField()
        field.borderStyle = .none
        field.placeholder = "Enter your password"
        field.isSecureTextEntry = true
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: field.frame.size.height))
        field.leftViewMode = .always
        return field
    }()

    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot password ?", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBackground
        button.alpha = 0.6
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(forgotPasswordClicked(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.941, green: 0.388, blue: 0.396, alpha: 1) // #f06365
        button.alpha = 1
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(loginClicked(_:)), for: .touchUpInside)
        return button
    }()
    
    
    lazy var noAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("No account? Register", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBackground
        button.alpha = 0.6
        button.addTarget(self, action: #selector(registerClicked(_:)), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    // MARK: - UI Setup
    
    private func createLabelStackView(title: String, field: UITextField) -> UIStackView {
        let label = UILabel()
        label.text = title
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = UIColor.gray
        
        let dividerLine = UIView()
        dividerLine.backgroundColor = UIColor(red: 0.941, green: 0.388, blue: 0.396, alpha: 1) // #f06365
        dividerLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
           
        let labelStackView = UIStackView(arrangedSubviews: [label, field, dividerLine])
        labelStackView.axis = .vertical
        labelStackView.spacing = 5
        
        return labelStackView
    }
    
    private func createForgotPasswordButtonStackView() -> UIStackView {
        let spacer = UIView()
        let stackView = UIStackView(arrangedSubviews: [spacer, forgotPasswordButton])
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }
    
    
    private func setupView() {
        self.view.backgroundColor = .systemBackground
        
        let verticalStackView = UIStackView(arrangedSubviews: [
            logoImage,
            createLabelStackView(title: "Email", field: emailField),
            createLabelStackView(title: "Password", field: passwordField),
            createForgotPasswordButtonStackView(),
            loginButton,
            noAccountButton
        ])
        
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 20
        
        self.view.addSubview(verticalStackView)
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            verticalStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            verticalStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            verticalStackView.widthAnchor.constraint(equalToConstant: 300),
            logoImage.heightAnchor.constraint(equalToConstant: 95)
        ])
        
    }
    
    
    // MARK: - Selectors

    @objc private func loginClicked(_ sender: UIButton) {

    }
    
    @objc private func forgotPasswordClicked(_ sender: UIButton){

    }
    
    @objc private func registerClicked(_ sender: UIButton){

    }
}
