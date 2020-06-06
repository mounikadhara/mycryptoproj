//
//  TicketViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 19/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {
    
    @IBOutlet weak var fromTF: UITextField!
    @IBOutlet weak var flightClassTF: UITextField!
    @IBOutlet weak var numPersonTF: UITextField!
    @IBOutlet weak var returnTF: UITextField!
    @IBOutlet weak var departureTF: UITextField!
    @IBOutlet weak var toTF: UITextField!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var roundBtn: UIButton!
    @IBOutlet weak var onewayBtn: UIButton!
    @IBOutlet weak var multiBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.designView(borderWidth: 0.5, borderColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        roundBtn.designBtn(borderWidth: 0, borderColor: .clear)
        onewayBtn.designBtn(borderWidth: 0, borderColor: .clear)
        multiBtn.designBtn(borderWidth: 0, borderColor: .clear)
        fromTF.addleftView(image: UIImage(systemName: "location")!)
        toTF.addleftView(image: UIImage(systemName: "location")!)
        departureTF.addleftView(image: UIImage(systemName: "calendar")!)
        returnTF.addleftView(image: UIImage(systemName: "calendar")!)
        numPersonTF.addleftView(image: UIImage(systemName: "person")!)
        flightClassTF.addleftView(image: UIImage(systemName: "star")!)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onclickRound(_ sender: Any) {
        changeBtn(roundColor: .systemTeal,  roundTextColor: .white )
    }
    
    @IBAction func onClickOneWay(_ sender: Any) {
        changeBtn(oneWayColor: .systemTeal,  oneWayTextColor: .white )
    }
    
    @IBAction func onClickulti(_ sender: Any) {
        changeBtn(multiColor: .systemTeal,  multiTextColor: .white )
    }
    
    func changeBtn(roundColor:UIColor = .white , oneWayColor:UIColor = .white, multiColor:UIColor = .white, roundTextColor:UIColor = .systemTeal, oneWayTextColor:UIColor = .systemTeal, multiTextColor:UIColor = .systemTeal){
        roundBtn.backgroundColor = roundColor
        onewayBtn.backgroundColor = oneWayColor
        multiBtn.backgroundColor = multiColor
        
        roundBtn.setTitleColor(roundTextColor, for: .normal)
        onewayBtn.setTitleColor(oneWayTextColor, for: .normal)
        multiBtn.setTitleColor(multiTextColor, for: .normal)
        
        
    }
    @IBAction func onSearchFlight(_ sender: Any) {
        guard let ticketController = storyboard?.instantiateViewController(identifier: "FlightResultViewController") as? FlightResultViewController else {
                   fatalError("Unable to navigate to ticketViewController")
               }
               navigationController?.pushViewController(ticketController, animated: true)
        
    }
}

