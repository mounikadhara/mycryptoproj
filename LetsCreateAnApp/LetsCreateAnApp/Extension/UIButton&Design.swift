//
//  UIButton&Design.swift
//  LetsCreateAnApp
//
//  Created by Dell on 14/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

extension UIButton {
    func designBtn(borderWidth: CGFloat = 1, borderColor: UIColor = .systemTeal){
    layer.cornerRadius = frame.height / 2
    clipsToBounds = true
    layer.borderWidth = borderWidth
    layer.borderColor = borderColor.cgColor
    
    }
}
