//
//  SessionModel.swift
//  PokerPlus
//
//  Created by Alex de Vera on 2/23/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

struct SessionModel
{
    enum GameType
    {
        case HoldEm_NoLimit
        case Omaha_PotLimit
    }
    
    enum TableType
    {
        case FullRing
        case ShortHanded
        case HeadsUp
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
