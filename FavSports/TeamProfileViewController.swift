//
//  TeamProfileViewController.swift
//  FavSports
//
//  Created by Andy Wong on 5/3/16.
//  Copyright © 2016 CMPE 137. All rights reserved.
//

import Foundation
import UIKit


class TeamProfileViewController : UIViewController{
    
    
    @IBOutlet weak var teamName: UILabel!

    
    @IBOutlet weak var stadiumPic: UIImageView!
    override func viewDidLoad() {
        teamName.text = SELECTED_TEAM
    }
    
   
}