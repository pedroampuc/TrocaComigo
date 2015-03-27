//
//  TrocaVC.swift
//  TrocaComigo
//
//  Created by Veronica Montezuma on 3/12/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import UIKit

var dtDAOaux: DataBaseDAO = DataBaseDAO()



class TrocaVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonNo: UIButton!
    @IBOutlet weak var buttonYes: UIButton!
    
    @IBOutlet weak var TamanhoLabel: UILabel!
    
    @IBOutlet weak var LikesLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //let usuarioaux: Array = Array()
        
       // dtDAOaux.createUserWithMail("teste1@gmail.com", nome: "teste", idade: "12", nasc: "21/12/1278", tamanho: "g", sexo: "M", celular: "121212121", facebook: "teste1")
       //usuarioaux =  dtDAOaux.getUserSpecsWithEmail("phalves@gmail.com")
        dtDAOaux.getUserSpecsWithEmail("teste1@gmail.com")

        

        
        // Nesse ponto, temos que pedir a lista de figuras do servidor
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
    
    //func verifica ()
    //{
        //var consulta: Int = Int(dtDAOaux.consultaFinalizada);
        
        
//        println(consulta) //"VERIFICA %d", dtDAOaux.consultaFinalizada)
//       if consulta == 1
//       {
////        NSLog(@"Consulta acabou")
//       
//         self.preencheLabel()
//        }
//    }
//    
//    func preencheLabel()
//    {
//        var array : NSMutableArray = dtDAOaux.arrLSBGoals
//        //self.TamanhoLabel.text = array.objectAtIndex(0).value["tamanho"]
//        //dtDAOaux.arrLSBGoals.objectAtIndex(0).valueForAttribute(Key :"tamanho")
//        println(array)
//    }

    @IBAction func buttonNoAction(sender: AnyObject)
    {
        var consulta: Int = Int(dtDAOaux.consultaFinalizada);
        if(consulta==1)
        {
            if (dtDAOaux.arrLSBGoals != nil)
            {
                let array = dtDAOaux.arrLSBGoals as NSMutableArray
                //array[0].nome
                let array2: AnyObject = array[0]
                //var nome : String = String(format: "%@",locale: array.valueForKey("nome") as? NSLocale)
                println(array, "ARRAY Q VEIO DO BANCO ")
                println(array2, "ARRAY 2 ")
                //println(array[0]. ,"nome")
                let text = array.valueForKey("tamanho")?.description
                self.TamanhoLabel.text = text //= array.("tamanho")
                println(array.valueForKey("nome")! , "wtf ?-----" ,array.valueForKey("tamanho")!)
            }
        }
    }
    

   
}
