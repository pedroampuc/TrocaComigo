//
//  Player.swift
//  Ratings
//
//  Created by Caroline on 15/09/2014.
//  Copyright (c) 2014 Caroline. All rights reserved.
//

import Foundation


import UIKit

class Player: NSObject {
  var name:String
  var game:String
  var rating:Int
  
  init(name:String, game:String, rating:Int) {
    self.name = name
    self.game = game
    self.rating = rating
    super.init()
  }
}