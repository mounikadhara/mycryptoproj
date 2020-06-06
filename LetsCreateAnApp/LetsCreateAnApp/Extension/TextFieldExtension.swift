//
//  TextFieldExtension.swift
//  LetsCreateAnApp
//
//  Created by Dell on 16/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

extension UITextField {
    func addRightView(image: UIImage, isSecure: Bool = false){
   let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(UIImage(systemName: "eye"), for: UIControl.State.normal)
            button.setImage(UIImage(systemName: "eye.slash"), for: UIControl.State.selected )
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEyeBtn), for: .touchUpInside)
            rightView = button
        } else {
            rightView = imageView
        }
        
        rightViewMode = .always
    
    }
    @objc func onClickEyeBtn(sender: UIButton){
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
    
    func addleftView(image: UIImage){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        leftView = imageView
        leftViewMode = .always
    }
    
}
