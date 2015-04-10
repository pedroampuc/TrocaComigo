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

    

    override func viewDidLoad() {
        super.viewDidLoad()
        

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

    

   

    @IBAction func buttonPerfilAction(sender: AnyObject) {
        
        
        
        var controller: PerfilVC = PerfilVC(nibName:"PerfilVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

    }
    


    @IBAction func buttonGaleriaAction(sender: AnyObject) {
        
        
        
        
        var controller: GaleriaVC = GaleriaVC(nibName:"GaleriaVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

    }
    
  
    

    
    @IBAction func buttonOkAction(sender: AnyObject) {
        
        
        
        var controller: TrocaVC = TrocaVC(nibName:"TrocaVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

        
    }
    
    
    
    
    
    
    
    
    
}
