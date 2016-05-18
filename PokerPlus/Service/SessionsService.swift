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
    
    private var sessionData: [SessionModel] = []
    private var testSessionData: [SessionModel] = []

    
    
    
    
    
    //
    // MARK: Initializers
    //
    
    init()
    {
        testSessionData.append( SessionModel() )
        testSessionData.append( SessionModel() )
        testSessionData.append( SessionModel() )
    }

    //
    // MARK: Session getter methods
    //
    
    func allSessions() -> [SessionModel]
    {
        return useTestData ? testSessionData : sessionData
    }
}
