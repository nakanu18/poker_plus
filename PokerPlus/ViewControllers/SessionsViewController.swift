//
//  SessionsViewController.swift
//  PokerPlus
//
//  Created by Alex de Vera on 2/23/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation
import UIKit

class SessionsViewController: UITableViewController
{
    var sessionData: [SessionModel] = []
    
    
    
    override func viewDidLoad()
    {
        sessionData.append(SessionModel())
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessionData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell: SessionCell
        
        cell = tableView.dequeueReusableCellWithIdentifier("SessionCell") as! SessionCell
        cell.setupWithModel(sessionData[indexPath.row])
        
        return cell
    }
}