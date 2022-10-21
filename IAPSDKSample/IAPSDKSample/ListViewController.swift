//
//  ListViewController.swift
//  IAPSDKSample
//
//  Created by coolishbee on 2022/10/18.
//

import UIKit
import IAPSDK

class ListViewController: UITableViewController {
    
    let kCellIdentifier = "CellIdentifier"
    let demos = ["InitBilling", "InAppPurchase"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "IAP SDK Demo"
        
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier)! as UITableViewCell
        
        cell.textLabel?.text = demos[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            UniversalAPIClient.shared.initBilling()
        } else if indexPath.row == 1 {
            UniversalAPIClient.shared.purchaseLaunch()
        }
    }
}
