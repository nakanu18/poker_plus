//
//  SessionModel.swift
//  PokerPlus
//
//  Created by Alex de Vera on 2/23/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

public struct SessionModel
{
    enum GameType
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
    
    enum TableType
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
    
    
    
    var gameType: GameType        = .HoldEm_NoLimit
    var tableType: TableType      = .FullRing
    var smallBlind: NSInteger     = 1
    var bigBlind: NSInteger       = 2

    var dateBegin: NSDate         = NSDate()
    var dateEnd: NSDate           = NSDate()
    var breakTime: NSTimeInterval = 0.0

    var buyins: [NSNumber]        = []
    var cashout: NSInteger        = 0
    var expenses: [NSNumber]      = []

    var notes: NSString           = ""
}
