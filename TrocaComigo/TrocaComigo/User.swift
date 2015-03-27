//
//  User.swift
//  TrocaComigo
//
//  Created by Pedro Miranda on 3/27/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import Foundation

class User {
    
    var name:String!
    var email:String!
    var age:Int?
    var gender:String!
    var size:String!
    var mobile:String?
    var wearArray:[Wear]?
    
    
    
    init(name:String, email:String, gender:String, size:String){
        self.name = name
        self.email = email
        self.gender = gender
        self.size = size
        
    }
    
    
}
