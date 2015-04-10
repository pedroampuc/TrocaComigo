//
//  MenuVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/17/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var buttonOk: UIButton!
    @IBOutlet weak var buttonLogout: UIButton!
    @IBOutlet weak var buttonGaleria: UIButton!
    @IBOutlet weak var buttonProfile: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //circular image and border UserOne
        imageProfile.layer.masksToBounds = true
        imageProfile.layer.cornerRadius = 50
        
        imageProfile.layer.borderWidth = 2
        imageProfile.layer.borderColor = UIColor.whiteColor().CGColor

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
