//
//  RouteTableViewController.swift
//  MapKitDirection
//
//  Created by Arsal Jamal on 03/11/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import MapKit

class RouteTableViewController: UITableViewController {

    var routeSteps = [MKRouteStep]()
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    
    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return routeSteps.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:
            indexPath)
        // Configure the cell...
        cell.textLabel?.text = routeSteps[indexPath.row].instructions
        return cell
}
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
