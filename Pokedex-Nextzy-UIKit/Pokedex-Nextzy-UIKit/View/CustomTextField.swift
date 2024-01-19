//
//  CustomTextField.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class CustomTextField: UITextField {

    enum TextFieldType{
        case email
        case password
        case confirmpassword
        case firstname
        case lastname
    }
    
    let type: TextFieldType
    
    init(textfieldType: TextFieldType) {
        self.type = textfieldType
        super.init(frame: .zero)
        self.borderStyle = .none
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
        self.font = UIFont.systemFont(ofSize: 18)
        self.textColor = UIColor(red: 0.941, green: 0.388, blue: 0.396, alpha: 1)
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.size.height))
        self.leftViewMode = .always
        
        switch type{
            
        case .email:
            self.placeholder = "email"
        case .password:
            self.placeholder = "password"
            self.isSecureTextEntry = true
        case .confirmpassword:
            self.placeholder = "confirm password"
            self.isSecureTextEntry = true
            
        case .firstname:
            self.placeholder = "firstname"
        case .lastname:
            self.placeholder = "lastname"
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
