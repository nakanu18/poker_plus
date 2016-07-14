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
    //
    // MARK: Properties
    //
    
    private lazy var sessionsService = SessionsService(useTestData: false)
    
    
    
    
    
    
    //
    // MARK: Life cycle methods
    //
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(animated: Bool)
    {
        super.viewWillDisappear(animated)
        self.sessionsService.saveAllSessions()
    }
    
    //
    // MARK: Tableview methods
    //
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.sessionsService.allSessions().count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCellWithIdentifier("SessionCell") as? SessionCell
        {
            cell.setupWithModel(self.sessionsService.allSessions()[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    //
    // MARK: Segues
    //
    
    override func prepareForSegue( segue: UIStoryboardSegue, sender: AnyObject? )
    {
        if segue.identifier == "gotoSessionDetails"
        {
            let sessionDetailsVC = segue.destinationViewController as! SessionsDetailsViewController
            
            if let selectedRow = self.tableView.indexPathForSelectedRow?.row
            {
                sessionDetailsVC.setupWithSession(sessionsService.allSessions()[selectedRow])
            }
        }
    }
}
