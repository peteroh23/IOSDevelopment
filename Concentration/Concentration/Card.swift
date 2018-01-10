//
//  Card.swift
//  Concentration
//
//  Created by Peter Oh on 1/10/18.
//  Copyright © 2018 Peter Oh. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int
    {
        identifierFactory += 1
        return identifierFactory
    
    }
    
    init()
    {
        self.identifier = Card.getUniqueIdentifier()
        
    }
    
    
}
