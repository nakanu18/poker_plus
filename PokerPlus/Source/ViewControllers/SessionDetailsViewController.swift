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
        return 7
    }
    
    override func tableView( tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath ) -> UITableViewCell
    {
        guard let rowType = SessionDetailsRowType( rawValue: indexPath.row ) else
        {
            return UITableViewCell()
        }
        
        let cell: SessionDetailsFieldValueCell
        
        cell = tableView.dequeueReusableCellWithIdentifier( rowType.cellIdentifier() ) as! SessionDetailsFieldValueCell
        cell.nameText = rowType.title()

        switch rowType
        {
            case .Date:
                cell.valueText = NSDateFormatter.localizedStringFromDate( sessionModel.dateBegan, dateStyle: .MediumStyle, timeStyle: .MediumStyle )
            case .GameType:
                cell.valueText = sessionModel.gameType.description()
            case .TableType:
                cell.valueText = sessionModel.tableType.description()
            case .Stakes:
                cell.valueText = "$\(sessionModel.smallBlind) - $\(sessionModel.bigBlind)"
            case .Profit:
                cell.valueText = "$\(sessionModel.cashout - sessionModel.totalBuyin)"
            case .TotalBuyin:
                cell.valueText = "$\(sessionModel.totalBuyin)"
            case .Expenses:
                cell.valueText = "$\(sessionModel.totalExpenses)"
        }
        return cell
    }
}
