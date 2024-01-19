//
//  File.swift
//  Pokedex-Nextzy-UIKit
//
//  Created by Nathat Kuanthanom on 19/1/2567 BE.
//
import UIKit

class ImagePickerButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        self.tintColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
