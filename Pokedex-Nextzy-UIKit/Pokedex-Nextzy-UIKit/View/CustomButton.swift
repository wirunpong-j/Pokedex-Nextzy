//
//  CustomButton.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//

import UIKit

class CustomButton: UIButton {

    init(title: String){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = UIColor(red: 0.941, green: 0.388, blue: 0.396, alpha: 1)
        self.alpha = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
