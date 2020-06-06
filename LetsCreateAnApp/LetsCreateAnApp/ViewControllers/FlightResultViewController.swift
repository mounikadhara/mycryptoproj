//
//  FlightResultViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 20/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit
class ResultCell: UITableViewCell{
    
    @IBOutlet weak var backView: UIView!
   
}

class FlightResultViewController: UIViewController {
    @IBOutlet weak var noOfPassengers: UITextField!
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var amountTF: UITextField!
    @IBOutlet weak var flightClassTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var resultTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationTF.addleftView(image: UIImage(systemName: "location")!)
        dateTF.addleftView(image: UIImage(systemName: "calendar")!)
        flightClassTF.addleftView(image: UIImage(systemName: "star")!)
        noOfPassengers.addleftView(image: UIImage(systemName: "person")!)
        amountTF.addleftView(image: UIImage(systemName: "gift")!)
    }
    
}
extension FlightResultViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ResultCell else {
            fatalError("unable to create TableView")
            
        }
        cell.backView.layer.cornerRadius = 5
        cell.backView.clipsToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    
    
}
