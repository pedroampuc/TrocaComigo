//
//  ViewController.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/12/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButton(sender: AnyObject) {
        
        Data.sharedInstance.user = DAOUser.getUserByEmail("teste1@gmail.com")
       // Data.sharedInstance.wears = DAOWear.getWearsByUser(Data.sharedInstance.user!)
       // Data.sharedInstance.wearsLiked = DAOWear.getWearsLikedByUser(Data.sharedInstance.user!)
       // Data.sharedInstance.matches =  DAOMatch.getAllMatchesByUser()
        
    }

}

