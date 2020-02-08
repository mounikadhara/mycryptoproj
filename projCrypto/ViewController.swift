//
//  ViewController.swift
//  CryptoProj
//
//  Created by Dell on 04/02/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var encryptBtn:UIButton!
    var decryptBtn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        configureNavigationBar()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    
    func configureNavigationBar(){
            
            
            navigationController?.navigationBar.barTintColor = .white
            navigationController?.navigationBar.barStyle = .black
            
            navigationItem.title = "CRYPTO"
          //  navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        }
    
    func configureUI(){
        
        
        encryptBtn = UIButton()
        encryptBtn.frame = CGRect(x: 130, y: 250, width: 150, height: 50)
        encryptBtn.layer.cornerRadius = 20
        encryptBtn.backgroundColor = .white
        view.addSubview(encryptBtn)
        encryptBtn.setTitle("ENCRYPT", for: UIControl.State.normal)
        encryptBtn.setTitleColor(.black, for: UIControl.State.normal)
        encryptBtn.addTarget(self, action: #selector(encryptTarget), for: UIControl.Event.touchUpInside)
 
        decryptBtn = UIButton()
        decryptBtn.frame = CGRect(x: 130, y: 315, width: 150, height: 50)
        decryptBtn.layer.cornerRadius = 20
        decryptBtn.backgroundColor = .white
        view.addSubview(decryptBtn)
        decryptBtn.setTitle("DECRYPT", for: UIControl.State.normal)
        decryptBtn.setTitleColor(.black, for: UIControl.State.normal)
        decryptBtn.addTarget(self, action: #selector(decryptTarget), for: UIControl.Event.touchUpInside)

    }
    
    @objc func encryptTarget(){
        
        navigationController?.pushViewController(EncryptViewController(), animated: true)
        
        
    }
    
    @objc func decryptTarget(){
        
        navigationController?.pushViewController(DecryptViewController(), animated: true)
        
    }
    
    
    
    
    
    
    
    
    
}



