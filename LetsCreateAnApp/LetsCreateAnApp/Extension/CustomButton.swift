//
//  CustomButton.swift
//  LetsCreateAnApp
//
//  Created by Dell on 14/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setRadiusAndShadow()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setRadiusAndShadow()
    }
    
    func setRadiusAndShadow(){
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = UIColor.systemTeal.cgColor
    }
    
}
