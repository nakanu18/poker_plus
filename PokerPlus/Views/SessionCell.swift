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
    @IBOutlet weak var labelDateDay: UILabel?
    @IBOutlet weak var labelDateNum: UILabel?

    @IBOutlet weak var labelLocation: UILabel?
    @IBOutlet weak var labelGameType: UILabel?

    @IBOutlet weak var labelEarnings: UILabel?
    
    
    
    func setupWithModel(newSession: SessionModel)
    {
        labelEarnings?.text = "$\(newSession.cashout)"
    }
}
