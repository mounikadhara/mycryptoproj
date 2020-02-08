//
//  EncryptViewController.swift
//  CryptoProj
//
//  Created by Dell on 04/02/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit


class EncryptViewController: UIViewController {
    
    var dataTF:UITextField!
    var submitBtn:UIButton!
    var dataLbl:UILabel!
     //var result:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        navigationItem.title = "ENCRYPT"
        
        UIConfiguration()
       
        // Do any additional setup after loading the view.
    }
    
    func  UIConfiguration(){
          view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
          
          dataTF = UITextField()
          dataTF.frame = CGRect(x: 30, y: 150, width: 350, height: 38)
          view.addSubview(dataTF)
          dataTF.delegate = self
          dataTF.borderStyle = .roundedRect
        dataTF.placeholder = "Enter Data"
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

        @objc func submitTarget()
        {
            
    

            var givenData = dataTF.text!
            var outputData = ""
            
            var st = Array(givenData)
            for i in 0...st.count-1
            {
                var count = 1
                for j in i+1...st.count
                {
                    if(j < st.count && st[i] != "." && st[i] == st[j])
                    {
                        count = count + 1
                        st[j] = "."
                    }
                    else{
                        if(st[i] != ".")
                        {
                            outputData.append(st[i])
                            outputData.append(String(count))
                            break
                        }
                    }
                }
            }
            print(outputData)
            
            dataLbl.text = outputData
      
     }
}

extension EncryptViewController:UITextFieldDelegate {

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
