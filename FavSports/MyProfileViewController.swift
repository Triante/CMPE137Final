//
//  MyProfileViewController.swift
//  FavSports
//
//  Created by Jay Bajaj on 5/2/16.
//  Copyright © 2016 CMPE 137. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class MyProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutaction(sender: AnyObject) {
        //https://favesports.firebaseio.com/users/96f8ca92-eb7c-4ade-9df8-f7e8dc8e9104
        //https://favesports.firebaseio.com/users/96f8ca92-eb7c-4ade-9df8-f7e8dc8e9104
        if FBSDKAccessToken.currentAccessToken()==nil {
            CURRENT_USER.unauth()
        }
        else {
            let loginManager = FBSDKLoginManager()
            
            loginManager.logOut()
        }
        
        self.performSegueWithIdentifier("showLogin", sender: self)
        print("Log out complete")
 
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
