//
//  TeamSumViewController.swift
//  FavSports
//
//  Created by Jorge Aguiniga on 5/2/16.
//  Copyright © 2016 CMPE 137. All rights reserved.
//

import UIKit


class TeamSumViewController: UIViewController {

    private var message: String = ""
    var toRecieve: String = ""
    
    @IBOutlet weak var test: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        message = toRecieve
        test.text = message
        //
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addToFaves(sender: UIButton) {
        FAVES_REF.childByAppendingPath(CURRENT_USER_UID).childByAppendingPath(message).setValue(true)
        
        
        
        
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
