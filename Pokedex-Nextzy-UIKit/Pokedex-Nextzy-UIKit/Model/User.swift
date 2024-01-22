//
//  User.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 22/1/2567 BE.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    let firstname: String
    let lastname: String
    let email: String
    let profileImageURL: String
}
