//
//  GameType.swift
//  PokerPlus
//
//  Created by Alex de Vera on 7/12/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

enum GameType: Int
{
    case HoldEm_NoLimit
    case Omaha_PotLimit
    
    func description() -> String
    {
        switch self
        {
            case .HoldEm_NoLimit:   return "NL Hold'Em"
            case .Omaha_PotLimit:   return "PL Omaha"
        }
    }
}
