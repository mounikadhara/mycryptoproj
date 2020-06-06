//
//  SignInViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 17/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.addRightView(image: UIImage(systemName: "person")!)
        passwordTF.addRightView(image: UIImage(systemName: "eye")!, isSecure: true)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSignIn(_ sender: Any) {
        UserDefaults.standard.set("LoggedIn", forKey: "accessToken")
    changeRoot()
    print("changed the root")
        
        
    }
    
   

}
