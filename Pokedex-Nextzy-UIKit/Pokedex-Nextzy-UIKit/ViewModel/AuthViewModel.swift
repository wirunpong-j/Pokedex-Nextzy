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
    
    func signIn(){
        self.userSession = true
        print("Debugger: sign in completed")
    }
    
    func signOut(){
        self.userSession = false
        print("Debugger: sign out completed")
    }
    
    func register(){
        print("Debugger: register completed")
    }
    
    func resetPassword(){
        print("Debugger: reset password completed")
    }
    
 
    
    
}
