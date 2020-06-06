//
//  HomeViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 18/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onClickPlain(_ sender: Any) {
        guard let ticketController = storyboard?.instantiateViewController(identifier: "TicketViewController") as? TicketViewController else {
            fatalError("Unable to navigate to ticketViewController")
        }
        navigationController?.pushViewController(ticketController, animated: true)
        
    }
    @IBAction func onClickTrain(_ sender: Any) {
    }
    @IBAction func onClickCar(_ sender: Any) {
    }
}
