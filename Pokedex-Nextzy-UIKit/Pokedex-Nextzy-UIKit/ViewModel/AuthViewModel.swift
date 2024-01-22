//
//  AuthViewModel.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import Foundation

class AuthViewModel{
    var userSession:Bool
    
    init() {
        self.userSession = false
    }
    // MARK: - Authentication
    
    func signIn(){
        self.userSession = true
        print("Debugger: sign in completed")
    }
    
    func signOut(){
        self.userSession = false
        print("Debugger: sign out completed")
    }
    
    func register(){
        self.userSession = true
        print("Debugger: register completed")
    }
    
    func resetPassword(){
        print("Debugger: reset password completed")
    }
    
    // MARK: - 
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }

    func isValidPassword(_ password: String) -> Bool {
        return password.count >= 8
    }
    
    
    
 
    
    
}
