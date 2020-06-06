//
//  ViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 14/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var signUPBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           // Hide the Navigation Bar
           self.navigationController?.setNavigationBarHidden(true, animated: animated)
       }
       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           // Show the Navigation Bar
           self.navigationController?.setNavigationBarHidden(false, animated: animated)
       }

    func createUI(){
        imageView.layer.cornerRadius = imageView.frame.height / 2
        signInBtn.designBtn()
        
        
    }

    @IBAction func onSignUpBtnTap(_ sender: Any) {
    }
    
    @IBAction func onSignInBtnTap(_ sender: Any) {
    }
}

