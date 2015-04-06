//
//  DAOUser.swift
//  TrocaComigo
//
//  Created by Pedro Miranda on 3/27/15.
//  Copyright (c) 2015 m2pv. All rights reserved.
//

import Foundation

var dtDAOaux: DataBaseDAO = DataBaseDAO()
var user : User!
var name : String = "a"
var gender : String = "H"
var size : String = "G"
var email : String = "gg"
var mobile : String = "gg"

var consulta: Int = 0

class DAOUser
{
    
    
    class func getUserByEmail(useremail:String) -> User!{
        
        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.value), 0)) { // 1
            dtDAOaux.getUserSpecsWithEmail(useremail)
            
            var aux = false
            
            while (aux==false)
            {
                
                if (consulta==0)
                {
                    // println("CONSULTA ZERO")
                    
                    consulta = Int(dtDAOaux.consultaFinalizada);
                }
                else
                {
                    aux = true
                    dispatch_async(dispatch_get_main_queue()) { // 2
                        println("GCD ACABOU") // 3
                        //consulta = Int(dtDAOaux.consultaFinalizada);
                        
                        user = self.saveUserInstance()
                    }
                }
            }
        }// fim do dispacth
        
        if (user == nil)
        {
            println("USUARIO NUL")
            return nil;
            
        }
        else
        {
            return user
        }
    }
    
    
    
    
    
    class func saveUserInstance() -> User!
    {
        
        
        println("CONSULTA 1")
        if (dtDAOaux.arrLSBGoals != nil)
        {
            let array = dtDAOaux.arrLSBGoals as NSMutableArray
            //array[0].nome
            let array2: AnyObject = array[0]
            //var nome : String = String(format: "%@",locale: array.valueForKey("nome") as? NSLocale)
            //println(array, "ARRAY Q VEIO DO BANCO ")
            
            println(array2, "ARRAY 2 ")// array com os dados dos usuários
            //println(array[0]. ,"nome")
            let text = array.valueForKey("tamanho")?.description
            //self.TamanhoLabel.text = text //= array.("tamanho")
            println(array.valueForKey("nome")! , "wtf ?-----" ,array.valueForKey("tamanho")!)
            
            println(array2.valueForKey("celular")! , "ARRAY 2 INDICE 0")
            
            name =  array2.valueForKey("nome") as String
            gender =  array2.valueForKey("sexo") as String
            size =  array2.valueForKey("tamanho") as String
            email =  array2.valueForKey("email") as String
            mobile = array2.valueForKey("celular") as String
            println(email)
        }
        
        
        // Recuperação dos dados do usuário a partir do BD
        
        user = User(name: name, email: email, gender: gender, size: size)
        println("usuario salvo no USER")
        println(user.name)
        Data.sharedInstance.user = user
        Data.sharedInstance.user?.setMobile(mobile)
        return user
        
    }
}

