//
//  SessionsService.swift
//  PokerPlus
//
//  Created by Alex de Vera on 5/17/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

class SessionsService
{
    //
    // MARK: Private properties
    //
    
    private var useTestData  = false
    private var sessionsData = SessionsModel()

    private let POKER_PLUS_SAVE_KEY     = "PokerPlusData"
    private let POKER_PLUS_SESSIONS_KEY = "Sessions"

    
    
    
    
    
    //
    // MARK: Initializers
    //
    
    init(useTestData: Bool)
    {
        self.useTestData = useTestData
    }
    
    func saveAllSessions()
    {
        let saveData = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWithMutableData: saveData)
        
        archiver.encodeObject( self.sessionsData.propertyListRepresentation(), forKey: self.POKER_PLUS_SESSIONS_KEY )
        archiver.finishEncoding()
        NSUserDefaults.standardUserDefaults().setObject( saveData, forKey: self.POKER_PLUS_SAVE_KEY )
    }
    
    func allSessions(forceFetch forceFetch: Bool = false) -> [SessionModel]
    {
        // Fetch if forced or we have no data
        guard forceFetch || self.sessionsData.sessions.count == 0 else
        {
            return self.sessionsData.sessions
        }
        
        if useTestData
        {
            self.sessionsData = self.fetchTestSessions()
        }
        else
        {
            self.sessionsData = self.fetchSessionsFromUserDefaults()
        }
        return self.sessionsData.sessions
    }
    
    // 
    // MARK: Private methods
    //
    
    private func fetchTestSessions() -> SessionsModel
    {
        var sessionsModel = SessionsModel()
        var nlHoldem0 = SessionModel()
        var nlHoldem1 = SessionModel()
        var plOmaha0  = SessionModel()
        
        nlHoldem0.cashout = 100
        nlHoldem1.cashout = 200
        plOmaha0.cashout  = 300
        
        plOmaha0.gameType = .Omaha_PotLimit
        
        sessionsModel.sessions = [nlHoldem0, nlHoldem1, plOmaha0]
        
        return sessionsModel
    }
    
    private func fetchSessionsFromUserDefaults() -> SessionsModel
    {
        guard let saveData = NSUserDefaults.standardUserDefaults().dataForKey( self.POKER_PLUS_SAVE_KEY ) else
        {
            return SessionsModel()
        }
        
        let unarchiver = NSKeyedUnarchiver(forReadingWithData: saveData)
        
        guard let sessionsDictionary = unarchiver.decodeObjectForKey( self.POKER_PLUS_SESSIONS_KEY ) as? NSDictionary,
                  sessionsModel = SessionsModel( propertyListRepresentation: sessionsDictionary ) else
        {
            unarchiver.finishDecoding()
            return SessionsModel()
        }
        unarchiver.finishDecoding()
        
        return sessionsModel
    }
}
