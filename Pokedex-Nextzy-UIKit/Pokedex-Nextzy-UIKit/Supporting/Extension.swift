//
//  Extension.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import Foundation
import UIKit

extension UIColor {
    static var pinkPokemon: UIColor {
        return UIColor(red: 0.941, green: 0.388, blue: 0.396, alpha: 1)
    }
}

extension UIViewController{
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
