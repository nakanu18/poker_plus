//
//  SessionDetailsFieldValue.swift
//  PokerPlus
//
//  Created by Alex de Vera on 5/18/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation
import UIKit

class SessionDetailsFieldValueCell: UITableViewCell
{
    //
    // MARK: Outlets
    //
    
    @IBOutlet private weak var labelFieldName: UILabel!
    @IBOutlet private weak var labelFieldValue: UILabel!
    
    // MARK: Properties
    
    var nameText: String?
    {
        set { self.labelFieldName.text = newValue }
        get { return self.labelFieldName.text }
    }

    var valueText: String?
        {
        set { self.labelFieldValue.text = newValue }
        get { return self.labelFieldValue.text }
    }
}
