//
//  Data.swift
//  TrocaComigo
//
//  Created by Pedro Miranda on 3/27/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import Foundation

private let data = Data()

class Data {
    
    var user:User?
    var wears:[Wear]?
    var matches:[Match]?
    var wearsLiked:[Wear]?
    
    class var sharedInstance: Data {
        return data
    }
    
    init ()
    {
        
    }
    
    
}