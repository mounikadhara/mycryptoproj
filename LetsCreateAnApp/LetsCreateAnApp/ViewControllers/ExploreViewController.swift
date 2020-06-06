//
//  ExploreViewController.swift
//  LetsCreateAnApp
//
//  Created by Dell on 27/04/20.
//  Copyright © 2020 Dell. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
extension ExploreViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "ReusedId", for: indexPath) as? ExploreTableViewCell
            else{
            fatalError("Unable to view TableViewCell")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
