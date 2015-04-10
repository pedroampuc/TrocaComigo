//
//  TrocaVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/12/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

//var dtDAOaux: DataBaseDAO = DataBaseDAO()

class TrocaVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var buttonNo: UIButton!
    @IBOutlet weak var buttonYes: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var TamanhoLabel: UILabel!
    @IBOutlet weak var LikesLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var buttonSettings: UIButton!
    @IBOutlet weak var buttonChat: UIButton!
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let usuarioaux: Array = Array()
        
        // dtDAOaux.createUserWithMail("teste1@gmail.com", nome: "teste", idade: "12", nasc: "21/12/1278", tamanho: "g", sexo: "M", celular: "121212121", facebook: "teste1")
        //usuarioaux =  dtDAOaux.getUserSpecsWithEmail("phalves@gmail.com")
        //dtDAOaux.getUserSpecsWithEmail("teste1@gmail.com")
        
        // self.TamanhoLabel.text = Data.sharedInstance.user.
        
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)) { // 1
            
            var aux = false
            
            while (aux==false)
            {
                // println(Data.sharedInstance.user?.name)
                
                var useraux = Data.sharedInstance.user
                //println("NOME DO USUARIO DENTRO DO GDC NA DISPATCHER")
                println(useraux?.name! )
                println("dentro da TrocaVC")
                
                // println("NOME DE USUARIO DENTRO DA TROCA")
                
                if (useraux?.name == nil)
                {
                    useraux = Data.sharedInstance.user
                    //   println("USER NIL")
                    // println(Data.sharedInstance.user)
                    
                    //consulta = Int(dtDAOaux.consultaFinalizada);
                }
                else
                {
                    aux = true
                    dispatch_async(dispatch_get_main_queue()) { // 2
                        println("GCD ACABOU") // 3
                        var sizeI = Data.sharedInstance.user?.size!
                        
                        var usercell = Data.sharedInstance.user?.mobile
                        
                        println(usercell!)
                        println (sizeI)
                        
                        self.TamanhoLabel.text = "Tam. " + sizeI!
                        
                        self.LikesLabel.text = usercell
                        
                        //consulta = Int(dtDAOaux.consultaFinalizada);
                        
                        //user = self.saveUser()
                    }
                }
            }
        }// fim do dispacth
        
        
        
        
        // Nesse ponto, temos que pedir a lista de figuras do servidor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func buttonNoAction(sender: AnyObject)
    {
    }
   
    @IBAction func buttonYesAction(sender: AnyObject) {
        
        
        
        var controller: MatchVC = MatchVC(nibName:"MatchVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)

    }
    
    
    
    @IBAction func buttonSettingsAction(sender: AnyObject) {
        
        
        
        var controller: MenuVC = MenuVC(nibName:"MenuVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

