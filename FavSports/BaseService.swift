//
//  BaseService.swift
//  FavSports
//
//  Created by Jay Bajaj on 4/25/16.
//  Copyright © 2016 CMPE 137. All rights reserved.
//

import Foundation
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

let BASE_URL = "https://favesports.firebaseio.com"

let FIREBASE_REF = Firebase(url:BASE_URL)
let CLUBS_REF = Firebase(url:"https://favesports.firebaseio.com/Clubs")
//let PLAYER_REF =
//let SPORTS_REF =
let FAVES_REF = Firebase(url:"https://favesports.firebaseio.com/Faves")

var CURRENT_USER: Firebase{ // save unique identifier for user that is logged in when authinticated
    let userID = NSUserDefaults.standardUserDefaults().valueForKey("uid") as! String

    let current_user = Firebase(url: "\(FIREBASE_REF)").childByAppendingPath("users").childByAppendingPath(userID)
    
    return current_user
    
}

var CURRENT_USER_UID: String {
    if FBSDKAccessToken.currentAccessToken()==nil {
        return FIREBASE_REF.authData.uid
    }
    else {
        //let loginManager = FBSDKLoginManager()

    //print(CURRENT_USER)
    return FIREBASE_REF.authData.uid
    }
}

