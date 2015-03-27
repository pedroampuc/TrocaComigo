//
//  Wear.swift
//  TrocaComigo
//
//  Created by Pedro Miranda on 3/27/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class Wear {
    
    var idWear:String?
    var size:String!
    var category:String!
    var description:String!
    var user:User!
    var photo:UIImage!
    
    init(size:String, category:String, description:String, user:User, photo:UIImage){
        self.size = size
        self.category = category
        self.description = description
        self.user = user
        self.photo = photo
        
    }
    
}
