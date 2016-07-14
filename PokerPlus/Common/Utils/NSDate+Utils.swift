//
//  NSDate+Utils.swift
//  PokerPlus
//
//  Created by Alex de Vera on 5/17/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

extension NSDate
{
    //
    // MARK: Helpers
    //
    
    func dayName() -> String
    {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "EEE"
        return dateFormatter.stringFromDate(self)
    }
    
    func dayNumberOfMonth() -> String
    {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "dd"
        return dateFormatter.stringFromDate(self)
    }
}
