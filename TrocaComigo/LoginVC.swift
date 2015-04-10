//import UIKit
//
//class ViewController: UIViewController, FBLoginViewDelegate {
//    
//    @IBOutlet var fbLoginView : FBLoginView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        self.fbLoginView.delegate = self
//        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
//        
//    }
//    
//    // Facebook Delegate Methods
//    
//    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
//        println("User Logged In")
//    }
//    
//    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
//        println("User: \(user)")
//        println("User ID: \(user.objectID)")
//        println("User Name: \(user.name)")
//        var userEmail = user.objectForKey("email") as String
//        println("User Email: \(userEmail)")
//    }
//    
//    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
//        println("User Logged Out")
//    }
//    
//    func loginView(loginView : FBLoginView!, handleError:NSError) {
//        println("Error: \(handleError.localizedDescription)")
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//}
//







//
//  ViewController.swift
//  TXib
//
//  Created by Marcel Miranda on 3/31/15.
//  Copyright (c) 2015 Marcel Miranda. All rights reserved.
//


//import UIKit
//
//class ViewController: UIViewController, FBSDKLoginButtonDelegate {
//    
//    
//    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
//        println("User Logged In")
//        
//        if ((error) != nil)
//        {
//            // Process error
//        }
//        else if result.isCancelled {
//            // Handle cancellations
//        }
//        else {
//            // If you ask for multiple permissions at once, you
//            // should check if specific permissions missing
//            if result.grantedPermissions.containsObject("email")
//            {
//                // Do work
//            }
//        }
//    }
//    
//    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
//        println("User Logged Out")
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        if (FBSDKAccessToken.currentAccessToken() != nil)
//        {
//            // User is already logged in, do work such as go to next view controller.
//        }
//        else
//        {
//            let loginView : FBSDKLoginButton = FBSDKLoginButton()
//            self.view.addSubview(loginView)
//            loginView.center = self.view.center
//            loginView.readPermissions = ["public_profile", "email", "user_friends"]
//            loginView.delegate = self
//        }
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//}

import UIKit

class LoginVC: UIViewController, FBSDKLoginButtonDelegate {
    
        
        

        
        func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
            println("User Logged In")
            
            if ((error) != nil)
            {
                // Process error
            }
            else if result.isCancelled {
                // Handle cancellations
            }
            else {
                // If you ask for multiple permissions at once, you
                // should check if specific permissions missing
                if result.grantedPermissions.containsObject("email")
                {
                    // Do work
                }
            }
    }
    @IBAction func go(sender: UIButton) {
        
        var controller: TrocaVC = TrocaVC(nibName:"TrocaVC", bundle:NSBundle.mainBundle())
        self.presentViewController(controller, animated: true, completion: nil)


        
        
    }
    
        func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
            println("User Logged Out")
        }
        
    
    
    override func viewDidLoad() {
        

        
        FBSDKProfile.enableUpdatesOnAccessTokenChange(true)
                super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
        
//                if (FBSDKAccessToken.currentAccessToken() != nil)
//                {
//                    // User is already logged in, do work such as go to next view controller.
//                }
//                else
        
                    let loginView : FBSDKLoginButton = FBSDKLoginButton(frame: CGRectMake( 80, 500, 250, 50));
                    self.view.addSubview(loginView)
        
//                    loginView.center = self.view.center
                    loginView.readPermissions = ["public_profile", "email", "user_friends"]
        
        
                    loginView.delegate = self
        
                    
                }
                
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

    
}


//    override func viewDidLoad() {
//        
//        super.viewDidLoad()
//        self.fbLoginView.delegate = self
//        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
//
//        // Do any additional setup after loading the view.
//    }
    
//    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
//        println("User Logged In")
//        println("This is where you perform a segue.")
//    }
//    
//    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser){
//        println("User Name: \(user.name)")
//    }
//    
//    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
//        println("User Logged Out")
//        
//    }
//    
//    func loginView(loginView : FBLoginView!, handleError:NSError) {
//        println("Error: \(handleError.localizedDescription)")
//    }
