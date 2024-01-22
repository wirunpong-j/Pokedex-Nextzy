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
    private let authViewModel: AuthViewModel

    init(authViewModel: AuthViewModel) {
        self.authViewModel = authViewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        imagePicker.delegate = self
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
    @objc func didClickRegister(_ sender: UIButton!) {
        guard let email = emailTextfield.text,
              let password = passwordTextfield.text,
              let confirmPassword = confirmTextfield.text,
              let firstName = firstnameTextfield.text,
              let lastName = lastnameTextfield.text else {
                  return
              }

        guard authViewModel.isValidEmail(email) else {
            showAlert(message: "Invalid email")
            return
        }

        guard authViewModel.isValidPassword(password) else {
            showAlert(message: "Password must be at least 8 characters")
            return
        }

        guard password == confirmPassword else {
            showAlert(message: "Password does not match with Confirm password")
            return
        }

        guard firstName.count >= 3 && lastName.count >= 3 else {
            showAlert(message: "Firstname and Lastname must be at least 3 characters")
            return
        }
        
        guard let profileImage = profileImageView.image else{
            return
        }

        authViewModel.register(withEmail: email, password: password, firstname: firstName, lastname: lastName, profileImageData: profileImage) { result in
            switch result {
            case .success(let user):
                // Registration successful
                print("Registration successful. User: \(user)")
                self.showTabBarController()
                
                
            case .failure(let error):
                // Registration failed
                print("Registration failed with error: \(error.localizedDescription)")
            }
        }
        
    }


    
    @objc private func didTapPhotoButton(){
        present(imagePicker, animated: true, completion: nil)

    }
    
    // MARK: - Function

    private func showTabBarController() {
        print("DEBUG: showTabBarController()")
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.presentTabBarController()
    }
    



}

extension RegisterViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {

            profileImageView.image = selectedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}

