//
//  SessionsDetailsViewController.swift
//  PokerPlus
//
//  Created by Alex de Vera on 5/18/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation
import UIKit

class SessionsDetailsViewController: UITableViewController
{
    //
    // MARK: Properties
    //

    private var sessionModel = SessionModel()
    
    
    
    
    
    
    //
    // MARK: Initializers
    //

    func setupWithSession( sessionModel: SessionModel )
    {
//        var gameType: GameType        = .HoldEm_NoLimit
//        var tableType: TableType      = .FullRing
//        var smallBlind: NSInteger     = 1
//        var bigBlind: NSInteger       = 2
//        
//        var dateBegin: NSDate         = NSDate()
//        var dateEnd: NSDate           = NSDate()
//        var breakTime: NSTimeInterval = 0.0
//        
//        var buyins: [NSNumber]        = []
//        var cashout: NSInteger        = 0
//        var expenses: [NSNumber]      = []
//        
//        var notes: NSString           = ""
        
        self.sessionModel = sessionModel
    }
    
    //
    // MARK: Life cycle methods
    //
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //
    // MARK: TableView methods
    //
    
    override func tableView( tableView: UITableView, numberOfRowsInSection section: Int ) -> Int
    {
        return 1
    }
    
    override func tableView( tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath ) -> UITableViewCell
    {
        let cell: SessionDetailsFieldValueCell
        
        cell = tableView.dequeueReusableCellWithIdentifier("SessionDetailsFieldValueCell") as! SessionDetailsFieldValueCell
        cell.setupWithField("Game", fieldValue: sessionModel.gameType.description())
        
        return cell
    }
}