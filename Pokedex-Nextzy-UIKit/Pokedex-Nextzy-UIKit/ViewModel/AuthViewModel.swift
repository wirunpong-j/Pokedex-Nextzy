//
//  AuthViewModel.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseStorage

class AuthViewModel{
    var userSession: FirebaseAuth.User?
    var currentUser: User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    // MARK: - Authentication
    
    func signIn(){
        print("Debugger: sign in completed")
    }
    
    func signOut(){
        print("Debugger: sign out completed")
    }
    
    func register(withEmail email: String, password: String, firstname: String, lastname: String, profileImageData: UIImage, completion: @escaping (Result<User, Error>) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                // failed to register
                completion(.failure(error))
                return
            }
            
            // get user creation result
            guard let authResult = authResult else {
                let error = NSError(domain: "Registration error", code: 0, userInfo: nil)
                completion(.failure(error))
                return
            }
            
            // upload image
            self.uploadImage(image: profileImageData, imageName: authResult.user.uid) { result in
                switch result {
                
                // if upload success then get put image url to user model
                case .success(var imageURL):
                    let user = User(id: authResult.user.uid, firstname: firstname, lastname: lastname, email: email, profileImageURL: imageURL.absoluteString)
                    
                    // encode user model then upload to firebase
                    if let encodedUser = try? Firestore.Encoder().encode(user){
                        Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
                        print("Debugger: \(user)")
                        completion(.success(user))
                        
                    }

                case .failure(let uploadError):
                    print("Error uploading image: \(uploadError.localizedDescription)")
                    completion(.failure(uploadError))
                }
            }
        }
    }
    
    func uploadImage(image: UIImage, imageName: String, completion: @escaping (Result<URL, Error>) -> Void) {
        // compress image
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {
            print("Debugger: Failed to compress image")
            return
        }
        
        // set image storage reference
        let storageRef = Storage.storage().reference(withPath: "profile_images/\(imageName).jpg")
        
        // then upload image
        storageRef.putData(imageData, metadata: nil) { (metadata, error) in
            if let error = error {
                print("Error uploading image: \(error.localizedDescription)")
                completion(.failure(error))
            } else {
                // if uploaded image successfully then get image url
                storageRef.downloadURL { (url, error) in
                    if let url = url {
                        completion(.success(url))
                    } else if let error = error {
                        completion(.failure(error))
                    }
                }
            }
        }
    }
    
    func resetPassword(){
        print("Debugger: reset password completed")
    }

    
    // MARK: - Email and Password Validation Functions
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }

    func isValidPassword(_ password: String) -> Bool {
        return password.count >= 8
    }
    
    
    
    
    
 
    
    
}
