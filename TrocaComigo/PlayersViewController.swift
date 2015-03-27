//
//  PlayersViewController.swift
//  Ratings
//
//  Created by Caroline on 15/09/2014.
//  Copyright (c) 2014 Caroline. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {

  var players:[Player] = playersData
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return players.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as PlayerCell
    
    let player = players[indexPath.row] as Player
    cell.nameLabel.text = player.name
    cell.gameLabel.text = player.game
    cell.ratingImageView.image = imageForRating(player.rating)
    return cell
  }
  
  func imageForRating(rating:Int) -> UIImage? {
    switch rating {
    case 1:
      return UIImage(named: "1StarSmall")
    case 2:
      return UIImage(named: "2StarsSmall")
    case 3:
      return UIImage(named: "3StarsSmall")
    case 4:
      return UIImage(named: "4StarsSmall")
    case 5:
      return UIImage(named: "5StarsSmall")
    default:
      return nil
    }
  }

}
