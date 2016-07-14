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
    var gameType: GameType        = .HoldEm_NoLimit
    var tableType: TableType      = .FullRing
    var smallBlind: Int           = 1
    var bigBlind: Int             = 2

    var dateBegan: NSDate         = NSDate()

    var buyins: [Int]             = []
    var cashout: Int              = 0
    var expenses: [Int]           = []
}

//
// MARK: PropertyListReadable
//

extension SessionModel: PropertyListReadable
{
    init?(propertyListRepresentation: NSDictionary?)
    {
        guard let values = propertyListRepresentation else
        {
            return nil
        }
        
        if let gameType     = values["gameType"] as? Int,
            tableType       = values["tableType"] as? Int,
            smallBlind      = values["smallBlind"] as? NSInteger,
            bigBlind        = values["bigBlind"] as? NSInteger,
        
            dateBegan       = values["dateBegan"] as? NSDate,
            
            buyins          = values["buyins"] as? [Int],
            cashout         = values["cashout"] as? Int,
            expenses        = values["expenses"] as? [Int]
        {
            self.gameType   = GameType(rawValue: gameType) ?? .HoldEm_NoLimit
            self.tableType  = TableType(rawValue: tableType) ?? .FullRing
            self.smallBlind = smallBlind
            self.bigBlind   = bigBlind
            
            self.dateBegan  = dateBegan
            
            self.buyins     = buyins
            self.cashout    = cashout
            self.expenses   = expenses
        }
        else
        {
            return nil
        }
    }
    
    func propertyListRepresentation() -> NSDictionary
    {
        var representation: [String: AnyObject] = [:]
        
        representation["gameType"]   = self.gameType.rawValue
        representation["tableType"]  = self.tableType.rawValue
        representation["smallBlind"] = self.smallBlind
        representation["bigBlind"]   = self.bigBlind

        representation["dateBegan"]  = self.dateBegan

        representation["buyins"]     = self.buyins
        representation["cashout"]    = self.cashout
        representation["expenses"]   = self.expenses
        
        return representation
    }
}
