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
    
    @IBOutlet weak var labelFieldName: UILabel?
    @IBOutlet weak var labelFieldValue: UILabel?
    
    
    
    
    
    
    //
    // MARK: Initializers
    //
    
    func setupWithField(fieldName: String, fieldValue: String)
    {
        labelFieldName?.text = fieldName
        labelFieldValue?.text = fieldValue
    }
}
