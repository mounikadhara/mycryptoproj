//
//  UIView&Design.swift
//  LetsCreateAnApp
//
//  Created by Dell on 15/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setRadiusAndShadow()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setRadiusAndShadow()
    }
    
    func setRadiusAndShadow(){
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 5
        layer.shadowOpacity = 1.0
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
    }
    
}

extension UIView {
    func designView(borderWidth: CGFloat = 1, borderColor: UIColor = .systemTeal){
    layer.cornerRadius = frame.height / 2
    clipsToBounds = true
    layer.borderWidth = borderWidth
    layer.borderColor = borderColor.cgColor
    
    }
}
