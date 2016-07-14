//
//  SessionModel.swift
//  PokerPlus
//
//  Created by Alex de Vera on 2/23/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

enum TableType: Int
{
    case FullRing
    case ShortHanded
    
    func description() -> String
    {
        switch self
        {
            case .FullRing:     return "Full Ring"
            case .ShortHanded:  return "6 max"
        }
    }
}
