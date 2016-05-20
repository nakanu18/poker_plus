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
    
    private lazy var sessionsService = SessionsService()
    
    
    
    
    
    
    //
    // MARK: Life cycle methods
    //
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        sessionsService.useTestData = true
    }
    
    //
    // MARK: Tableview methods
    //
    
    override func tableView( tableView: UITableView, numberOfRowsInSection section: Int ) -> Int
    {
        return sessionsService.allSessions().count
    }
    
    override func tableView( tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath ) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("SessionCell") as! SessionCell

        cell.setupWithModel( sessionsService.allSessions()[indexPath.row] )
        
        return cell
    }
    
    //
    // MARK: Segues
    //
    
    override func prepareForSegue( segue: UIStoryboardSegue, sender: AnyObject? )
    {
        if( segue.identifier == "gotoSessionDetails" )
        {
            let sessionDetailsVC = segue.destinationViewController as! SessionsDetailsViewController
            
            if let selectedRow = tableView.indexPathForSelectedRow?.row
            {
                sessionDetailsVC.setupWithSession( sessionsService.allSessions()[selectedRow] )
            }
        }
    }
}