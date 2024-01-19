//
//  RegisterViewController.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class RegisterViewController: UIViewController{
    // MARK: - Varibles
    
    
    // MARK: - UI Components
    
    
    // Profile image and cover
    lazy var coverScreenView = UIView()
    lazy var profileImageView: UIImageView = {
        let imageName = "pokeball-profile"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.layer.masksToBounds = true
        return imageView
    }()
    // Image picker
    lazy var imagePickerButton = ImagePickerButton()
    let imagePicker = UIImagePickerController()
    
    // Textfield
    let emailTextfield = CustomTextField(textfieldType: .email)
    let passwordTextfield = CustomTextField(textfieldType: .password)
    let confirmTextfield = CustomTextField(textfieldType: .confirmpassword)
    let firstnameTextfield = CustomTextField(textfieldType: .firstname)
    let lastnameTextfield = CustomTextField(textfieldType: .lastname)
    let registerButton = CustomButton(title: "Register")
    
    // row stack view
    private func createLabelStackView(title: String, field: UITextField) -> UIStackView {
        let label = UILabel()
        label.text = title
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor.gray
        
        let dividerLine = UIView()
        dividerLine.backgroundColor = UIColor.pinkPokemon // #f06365
        dividerLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
           
        let labelStackView = UIStackView(arrangedSubviews: [label, field, dividerLine])
        labelStackView.axis = .vertical
        labelStackView.spacing = 5
        
        return labelStackView
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        setupUI()
        imagePickerButton.addTarget(self, action: #selector(didTapPhotoButton), for: .touchUpInside)
        registerButton.addTarget(self, action: #selector(didClickRegister(_:)), for: .touchUpInside)

    }
    
    // MARK: - UI Setup
    private func setupNavbar(){
        self.title = "Register"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    private func setupUI(){
        self.view.backgroundColor = .white
        let textfieldStack = UIStackView(arrangedSubviews: [
            createLabelStackView(title: "Email", field: emailTextfield),
            createLabelStackView(title: "Password", field: passwordTextfield),
            createLabelStackView(title: "Confirm Password", field: confirmTextfield),
            createLabelStackView(title: "Firstname", field: firstnameTextfield),
            createLabelStackView(title: "Lastname", field: lastnameTextfield),
            
        ])
        
        
        self.view.addSubview(coverScreenView)
        coverScreenView.backgroundColor = UIColor.pinkPokemon // #f06365
        coverScreenView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.layer.cornerRadius = 60
        
        self.view.addSubview(imagePickerButton)
        imagePickerButton.translatesAutoresizingMaskIntoConstraints = false
        imagePickerButton.layer.cornerRadius = 15
        

        
        
        textfieldStack.axis = .vertical
        textfieldStack.spacing = 15
        self.view.addSubview(textfieldStack)
        textfieldStack.translatesAutoresizingMaskIntoConstraints = false
        textfieldStack.backgroundColor = .white
        
        self.view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.layer.cornerRadius = 20
        
        
        NSLayoutConstraint.activate([
            coverScreenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            coverScreenView.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            coverScreenView.widthAnchor.constraint(equalTo: view.widthAnchor),
            coverScreenView.heightAnchor.constraint(equalToConstant: 280),
            
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.bottomAnchor.constraint(equalTo: coverScreenView.bottomAnchor, constant: -20),
            profileImageView.widthAnchor.constraint(equalToConstant: 120),
            profileImageView.heightAnchor.constraint(equalToConstant: 120),
            
            imagePickerButton.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: -30),
            imagePickerButton.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 0),
            imagePickerButton.widthAnchor.constraint(equalToConstant: 30),
            imagePickerButton.heightAnchor.constraint(equalToConstant: 30),
            
            textfieldStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            textfieldStack.topAnchor.constraint(equalTo: coverScreenView.bottomAnchor, constant: 20),
            textfieldStack.widthAnchor.constraint(equalToConstant: 320),
            
            registerButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor ),
            registerButton.topAnchor.constraint(equalTo: textfieldStack.bottomAnchor, constant: 30),
            registerButton.widthAnchor.constraint(equalToConstant: 320),
            registerButton.heightAnchor.constraint(equalToConstant: 40)
            
            

        ])
        
    }
    
    
    // MARK: - Selectors
    @objc func didClickRegister(_ sender: UIButton!){
        print("Debugger: registered tapped")
    }
    
    @objc private func didTapPhotoButton(){
        print("Debugger: Image picker tapped")

    }



}

