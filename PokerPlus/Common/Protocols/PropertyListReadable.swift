//
//  PropertyListReadable.swift
//  PokerPlus
//
//  Created by Alex de Vera on 7/12/16.
//  Copyright © 2016 Alex de Vera. All rights reserved.
//

import Foundation

protocol PropertyListReadable
{
    init?(propertyListRepresentation:NSDictionary?)
    func propertyListRepresentation() -> NSDictionary
}
