//
//  GaleriaVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/17/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class GaleriaVC: UIViewController {

    @IBOutlet var imageGaleria1: UIImageView!
    @IBOutlet var imageGaleria2: UIImageView!
    @IBOutlet var imageGaleria3: UIImageView!
    @IBOutlet var imageGaleria4: UIImageView!
    @IBOutlet var imageGaleria5: UIImageView!
    @IBOutlet var imageGaleria6: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageGaleria1.layer.borderWidth = 3.0
        self.imageGaleria1.layer.borderColor = UIColor .whiteColor().CGColor

        self.imageGaleria2.layer.borderWidth = 3.0
        self.imageGaleria2.layer.borderColor = UIColor .whiteColor().CGColor
        
        self.imageGaleria3.layer.borderWidth = 3.0
        self.imageGaleria3.layer.borderColor = UIColor .whiteColor().CGColor
        
        self.imageGaleria4.layer.borderWidth = 3.0
        self.imageGaleria4.layer.borderColor = UIColor .whiteColor().CGColor
        
        self.imageGaleria5.layer.borderWidth = 3.0
        self.imageGaleria5.layer.borderColor = UIColor .whiteColor().CGColor
        
        self.imageGaleria6.layer.borderWidth = 3.0
        self.imageGaleria6.layer.borderColor = UIColor .whiteColor().CGColor
        
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


   
    @IBAction func buttonVoltarAction(sender: AnyObject) {
        
        
        
        
        var controller: MenuVC = MenuVC(nibName:"MenuVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

    }

    
    @IBAction func buttonNovoItemAction(sender: AnyObject) {
        
        
        var controller: NovoItemVC = NovoItemVC(nibName:"NovoItemVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

        
        
    }
    
    
    @IBAction func buttonVoltar(sender: AnyObject) {
        
        
        
        var controller: MenuVC = MenuVC(nibName:"MenuVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

        
        
    }
    

    
    
    
    
}
