//
//  DecryptViewController.swift
//  CryptoProj
//
//  Created by Dell on 04/02/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class DecryptViewController: UIViewController {
    
    var dataTF:UITextField!
    var submitBtn:UIButton!
    var dataLbl:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "DECRYPT"

        UIConfiguration()

    }
    
    func  UIConfiguration(){
        view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        dataTF = UITextField()
        dataTF.frame = CGRect(x: 30, y: 150, width: 350, height: 38)
        view.addSubview(dataTF)
        dataTF.delegate = self
        dataTF.placeholder = "Enter Data"
        dataTF.borderStyle = .roundedRect
        dataTF.clearButtonMode = .always
        
        
        submitBtn = UIButton()
        submitBtn.frame = CGRect(x: 150, y: 210, width: 100, height: 38)
        view.addSubview(submitBtn)
        submitBtn.layer.cornerRadius = 20
        submitBtn.backgroundColor = .lightGray
        submitBtn.isEnabled = false
        submitBtn.setTitle("Submit", for: UIControl.State.normal)
        submitBtn.setTitleColor(.black, for: UIControl.State.normal)
        
        
        dataLbl = UILabel()
        dataLbl.frame = CGRect(x: 30, y: 270, width: 350, height: 38)
        view.addSubview(dataLbl)
        dataLbl.layer.cornerRadius = 5
        dataLbl.clipsToBounds = true
        dataLbl.backgroundColor = .white
  
    }
    

  func toBase64(word: String) -> String{
      let base64Encoded = word.data(using: String.Encoding.utf8)!.base64EncodedString()

      return base64Encoded
  }

    @objc func submitTarget()
    {
        var  givenData = dataTF.text!
        var outputData = ""
        
        var c:Character = "\0"
        
        var st = Array(givenData)
        
        let digits = CharacterSet.decimalDigits
        
        
        for uni in givenData.unicodeScalars{
            
            if(!digits.contains(uni)){
               c = Character(uni)
            }
            else{
                for k in 0...Int(String(Character(uni)))! - 1
                {
                    outputData.append(c)
                }
            }
    }
        dataLbl.text = outputData
        print(outputData)
    
    }

  }

extension DecryptViewController:UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if(dataTF.text?.count != 0){
        submitBtn.isEnabled = true
            submitBtn.backgroundColor = .white
           submitBtn.addTarget(self, action: #selector(submitTarget), for: UIControl.Event.touchUpInside)
        }
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
         if(textField == dataTF){
            
             dataLbl.text?.removeAll()
     }
         return true
    }
}

