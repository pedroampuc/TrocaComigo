//
//  NovoItemVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/17/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

class NovoItemVC: UIViewController {

    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var textDescricao: UITextField!
    
    @IBAction func buttonUploadPhoto(sender: UIButton) {
    }
    
        var sizes = ["Camisa","Calça","Short","Saia","Vestido","Casaco"]
        
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return sizes.count
        }
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
            return sizes[row]
        }
    
        func save()
        {
            var user = User(name: "João", email: "joao@puc-rio.br", gender: "M", size: "L")
            
            var wear = Wear(size: "M", category: "Blusa", description: "Blusa azul linda e maravilhosa", user: user , photo: UIImage(named: "xpto.png")!)
            
            DAOWear.save(wear)
            
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
 
    @IBAction func buttonCancelAction(sender: AnyObject) {
        
        
        var controller: GaleriaVC = GaleriaVC(nibName:"GaleriaVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

    }
        
    }
