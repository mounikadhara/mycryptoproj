//
//  SignUpViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 15/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signupFacebookBtn: UIButton!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupFacebookBtn.designBtn(borderWidth: 0, borderColor: UIColor.clear)
        nameTF.addRightView(image: UIImage(systemName: "person")!)
        emailTF.addRightView(image: UIImage(systemName: "envelope")!)
        passwordTF.addRightView(image: UIImage(systemName: "eye")!, isSecure: true)
    }

    @IBAction func signUpBtnTap(_ sender: Any) {
   
        
    }
    @IBAction func signInBtnTap(_ sender: Any) {
        changeRoot()
    }
}
