//
//  ViewControllerExtension.swift
//  LetsCreateAnApp
//
//  Created by Dell on 18/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func changeRoot(){
        
       
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func goToSignIn(){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignInViewController") as? SignInViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
}
