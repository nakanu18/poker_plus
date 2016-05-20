//
//  SessionsService.swift
//  PokerPlus
//
//  Created by Alex de Vera on 5/17/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

struct SessionsService
{
    //
    // MARK: Public properties
    //
    
    var useTestData: Bool = false
    
    //
    // MARK: Private properties
    //
    
    private var sessionData: [SessionModel]     = []
    private var testSessionData: [SessionModel] = []

    
    
    
    
    
    //
    // MARK: Initializers
    //
    
    init()
    {
        setupTestSessionData()
    }
    
    mutating func setupTestSessionData()
    {
        var nlHoldem0 = SessionModel()
        var nlHoldem1 = SessionModel()
        var plOmaha0  = SessionModel()
        
        nlHoldem0.cashout = 100
        nlHoldem1.cashout = 200
        plOmaha0.cashout  = 300
        
        plOmaha0.gameType = .Omaha_PotLimit
        
        testSessionData = [nlHoldem0, nlHoldem1, plOmaha0]
    }

    //
    // MARK: Session getter methods
    //
    
    func allSessions() -> [SessionModel]
    {
        return useTestData ? testSessionData : sessionData
    }
}
