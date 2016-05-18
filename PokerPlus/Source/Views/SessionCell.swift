//
//  SessionCell.swift
//  PokerPlus
//
//  Created by Alex de Vera on 2/23/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation
import UIKit

class SessionCell: UITableViewCell
{
    //
    // MARK: Outlets
    //
    
    @IBOutlet weak var labelDateDay: UILabel?
    @IBOutlet weak var labelDateNum: UILabel?

    @IBOutlet weak var labelLocation: UILabel?
    @IBOutlet weak var labelGameType: UILabel?

    @IBOutlet weak var labelEarnings: UILabel?
    
    
    
    
    
    
    //
    // MARK: Initializers
    //
    
    func setupWithModel( newSession: SessionModel )
    {
        labelDateDay?.text = newSession.dateBegin.dayName()
        labelDateNum?.text = newSession.dateBegin.dayNumberOfMonth()
        
        labelGameType?.text = newSession.gameType.description()
        labelEarnings?.text = "$\(newSession.cashout)"
    }
}
