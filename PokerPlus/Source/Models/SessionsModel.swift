//
//  SessionsModel.swift
//  PokerPlus
//
//  Created by Alex de Vera on 7/12/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

public struct SessionsModel
{
    var sessions: [SessionModel] = []
}

//
// MARK: PropertyListReadable
//

extension SessionsModel: PropertyListReadable
{
    init?( propertyListRepresentation: NSDictionary? )
    {
        guard let values = propertyListRepresentation,
                  numSessions = values["numSessions"] as? Int else
        {
            return nil
        }

        // Manually read each session from the dictionary
        for i in 0...numSessions-1
        {
            guard let sessionDictionary = values["sessions_\(i)"] as? NSDictionary,
                      session = SessionModel( propertyListRepresentation: sessionDictionary ) else
            {
                return nil
            }
            self.sessions.append( session )
        }
    }
    
    func propertyListRepresentation() -> NSDictionary
    {
        var representation: [String: AnyObject] = [:]
        
        // Manually write each session to the dictionary
        for (i, session) in self.sessions.enumerate()
        {
            representation["sessions_\(i)"] = session.propertyListRepresentation()
        }
        representation["numSessions"] = self.sessions.count
        
        return representation
    }
}
