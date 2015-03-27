//
//  DAOUser.swift
//  TrocaComigo
//
//  Created by Pedro Miranda on 3/27/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import Foundation

class DAOUser{
    
   class func getUserByEmail(email:String) -> User!{
    
        // Recuperação dos dados do usuário a partir do BD
        var name = "Andrew"
        var gender="H"
        var size = "G"
        var user = User(name: name, email: email, gender: gender, size: size)
        return user
    }
    
    
}
