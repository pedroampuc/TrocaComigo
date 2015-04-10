//
//  MatchVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/17/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class MatchVC: UIViewController {

    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var imageUserOne: UIImageView!
    @IBOutlet weak var imageUserTwo: UIImageView!
    @IBOutlet weak var buttonBack: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //circular image and border UserOne
        imageUserOne.layer.masksToBounds = true
        imageUserOne.layer.cornerRadius = imageUserOne.frame.size.width/2
        
        imageUserOne.layer.borderWidth = 2
        imageUserOne.layer.borderColor = UIColor.whiteColor().CGColor
        
        //circular image and border UserTwo
        imageUserTwo.layer.masksToBounds = true
        imageUserTwo.layer.cornerRadius = imageUserOne.frame.size.width/2
        
        imageUserTwo.layer.borderWidth = 2
        imageUserTwo.layer.borderColor = UIColor.whiteColor().CGColor


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
